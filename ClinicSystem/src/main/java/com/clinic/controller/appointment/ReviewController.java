package com.clinic.controller.appointment;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.MedicalHistory;
import com.clinic.entity.Patient;
import com.clinic.model.AppointmentStatus;
import com.clinic.model.MedicalReport;
import com.clinic.model.TimeSlot;
import com.clinic.service.*;

import java.io.*;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.mail.MessagingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clinic.util.EmailUtil;
import com.google.gson.Gson;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfWriter;
import org.apache.commons.lang3.StringUtils;
import sun.java2d.pipe.SpanShapeRenderer;

@WebServlet(name = "appointment/review", value = "/appointment/review")
public class ReviewController extends HttpServlet {

    private AppointmentBookingService appointmentBookingService;
    private RoomService roomService;
    private DoctorService doctorService;
    private MedicalHistoryService medicalHistoryService;

    private PatientService patientService;

    public ReviewController() {
        appointmentBookingService = new AppointmentBookingServiceImpl();
        roomService = new RoomServiceImpl();
        doctorService = new DoctorServiceImpl();
        medicalHistoryService = new MedicalHistoryServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookingAppointmentDto bookingAppointmentDto = null;
        if (StringUtils.isNotEmpty(request.getParameter("id"))) {
            Long id = Long.parseLong(request.getParameter("id"));
            bookingAppointmentDto = (BookingAppointmentDto) request.getAttribute("appointment");
            if (bookingAppointmentDto == null) {
                bookingAppointmentDto = appointmentBookingService.findById(id);
            }
        }
        request.setAttribute("appointment", bookingAppointmentDto);
        request.setAttribute("TIMESLOTS", TimeSlot.values());
        request.setAttribute("ROOMS", roomService.findAll());
        request.setAttribute("DOCTORS", doctorService.findAll());
        MedicalHistory medicalHistory = medicalHistoryService.findById(bookingAppointmentDto.getMedicalRecordId());

        request.setAttribute("medicalHistory", medicalHistory);
        if (medicalHistory != null) {
            request.setAttribute("medicalReport", medicalHistory.getMedicalReport());
        } else {
            request.setAttribute("medicalReport", new MedicalReport());
        }
        request.getRequestDispatcher("/views/appointment-review.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Long id = Long.parseLong(request.getParameter("id"));
        BookingAppointmentDto bookingAppointmentDto = appointmentBookingService.findById(id);
        bookingAppointmentDto.setStatus(AppointmentStatus.COMPLETE);
        boolean result = appointmentBookingService.complete(bookingAppointmentDto);

        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        MedicalHistory medicalHistory = medicalHistoryService.findById(bookingAppointmentDto.getMedicalRecordId());
        MedicalReport medicalReport = medicalHistory.getMedicalReport();
        Patient patient = patientService.findById(bookingAppointmentDto.getPatientId());

        if (result) {
            String content = "Patience name: " + patient.getGuardianFullname() + "\n" + "Date: " + sdf.format(bookingAppointmentDto.getUpdatedDate()) + "\n" + "Body temperature: " + medicalReport.getBodyTemperature() + "\n" + "Blood pressure: " + medicalReport.getBloodPressure() + "\n" + "Height: " + medicalReport.getHeight() + " cm" + "\n" + "Weight: " + medicalReport.getWeight() + " kg" + "\n" + "Symptom: " + medicalReport.getSymptom() + "\n" + "Early diagnosis: " + medicalReport.getEarlyDiagnosis() + "\n" + "Final diagnosis: " + medicalReport.getFinalDiagnosis() + "\n" + "Diagnosis disease: " + medicalReport.getDiagnosisDisease() + "\n" + "Conclusion: " + medicalReport.getConclusion();

            // send mail
            try {
                String receiver = bookingAppointmentDto.getEmail();
                String subject = "Patient detail in  " + sdf.format(bookingAppointmentDto.getUpdatedDate());

                EmailUtil.sendEmail(receiver, subject, content);
            } catch (MessagingException e) {
                System.out.println("Error sending mail");
            }

            response.sendRedirect(request.getContextPath() + "/appointment/complete?id=" + bookingAppointmentDto.getId());
        } else {
            response.sendRedirect(request.getContextPath() + "/appointment/review?id=" + bookingAppointmentDto.getId() + "&message=booking_notsuccess&alert=danger");
        }
    }
}
