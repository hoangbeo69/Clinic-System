package com.clinic.controller.appointment;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.MedicalHistory;
import com.clinic.entity.Patient;
import com.clinic.model.AppointmentStatus;
import com.clinic.model.MedicalReport;
import com.clinic.model.TimeSlot;
import com.clinic.service.*;

import java.io.*;
import java.text.SimpleDateFormat;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clinic.util.EmailUtil;
import org.apache.commons.lang3.StringUtils;

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
        patientService = new PatientServiceImpl();
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
            String content = "T??n b???nh nh??n: " + patient.getGuardianFullname() +"\n"+
                    "S??? ??i???n tho???i: " + patient.getPhoneNumber() +"\n"+
                    "Ng??y sinh: " + sdf.format(patient.getDob()) +"\n"+
                    "Ng??y kh??m: " + sdf.format(bookingAppointmentDto.getUpdatedDate()) + "\n"+
                    "Nhi???t ?????: " + medicalReport.getBodyTemperature() + " ??C\n"+
                    "Huy???t ??p: " + medicalReport.getBloodPressure() + " mmHg\n"+
                    "Chi???u cao: " + medicalReport.getHeight() + " cm" + "\n"+
                    "C??n n???ng: " + medicalReport.getWeight() + " kg" + "\n"+
                    "Tri???u ch???ng: " + medicalReport.getSymptom() + "\n"+
                    "Ch???n ??o??n ?????u: " + medicalReport.getEarlyDiagnosis() + "\n"+
                    "Ch???n ??o??n cu???i: " + medicalReport.getFinalDiagnosis() + "\n"+
                    "B???nh k??m theo: " + medicalReport.getDiagnosisDisease() + "\n"+
                    "K???t lu???n: " + medicalReport.getConclusion();

            // send mail
            try {
                String receiver = bookingAppointmentDto.getEmail();
                String subject = "Th??ng tin kh??m b???nh ng??y " + sdf.format(bookingAppointmentDto.getUpdatedDate());

                EmailUtil.sendEmail(receiver, subject, content);
            } catch (MessagingException e) {
                System.out.println("L???i g???i mail");
            }

            response.sendRedirect(request.getContextPath() + "/appointment/complete?id=" + bookingAppointmentDto.getId());
        } else {
            response.sendRedirect(request.getContextPath() + "/appointment/review?id=" + bookingAppointmentDto.getId() + "&message=booking_notsuccess&alert=danger");
        }
    }
}
