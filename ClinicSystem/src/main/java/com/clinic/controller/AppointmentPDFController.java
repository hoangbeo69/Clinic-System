package com.clinic.controller;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.MedicalHistory;
import com.clinic.entity.Patient;
import com.clinic.model.MedicalReport;
import com.clinic.service.*;
import com.clinic.util.EmailUtil;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfWriter;
import org.apache.commons.lang3.StringUtils;

import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

@WebServlet(name = "AppointmentPDFController", urlPatterns = {"/appointment/pdf"})
public class AppointmentPDFController extends HttpServlet {

    AppointmentBookingService appointmentBookingService;

    MedicalHistoryService medicalHistoryService;

    PatientService patientService;

    public AppointmentPDFController() {
        appointmentBookingService = new AppointmentBookingServiceImpl();
        medicalHistoryService = new MedicalHistoryServiceImpl();
        patientService = new PatientServiceImpl();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Long id = Long.parseLong(request.getParameter("id"));
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        BookingAppointmentDto bookingAppointmentDto = appointmentBookingService.findById(id);
        MedicalHistory medicalHistory = medicalHistoryService.findById(bookingAppointmentDto.getMedicalRecordId());

        if(medicalHistory==null){
            response.sendRedirect(request.getContextPath() + "/appointment");
        }

        Patient patient = patientService.findById(bookingAppointmentDto.getPatientId());
        MedicalReport medicalReport = medicalHistory.getMedicalReport();
        String content = "Patience name: " + patient.getGuardianFullname() + "\n" + "Date: " + sdf.format(bookingAppointmentDto.getUpdatedDate()) + "\n" + "Body temperature: " + medicalReport.getBodyTemperature() + "\n" + "Blood pressure: " + medicalReport.getBloodPressure() + "\n" + "Height: " + medicalReport.getHeight() + " cm" + "\n" + "Weight: " + medicalReport.getWeight() + " kg" + "\n" + "Symptom: " + medicalReport.getSymptom() + "\n" + "Early diagnosis: " + medicalReport.getEarlyDiagnosis() + "\n" + "Final diagnosis: " + medicalReport.getFinalDiagnosis() + "\n" + "Diagnosis disease: " + medicalReport.getDiagnosisDisease() + "\n" + "Conclusion: " + medicalReport.getConclusion();

        // export PDF
        try {
            Document document = new Document();
            PdfWriter.getInstance(document, new FileOutputStream(System.getProperty("user.dir") + "\\AppointmentReport.pdf"));

            document.open();

            document.add(new Paragraph(content));
            document.close();

            response.setContentType("text/plain");
            response.setHeader("Content-disposition", "attachment; filename=AppointmentReport.pdf");

            File newFile = new File(System.getProperty("user.dir") + "\\AppointmentReport.pdf");
            InputStream in = new FileInputStream(newFile);
            OutputStream out = response.getOutputStream();

            byte[] buffer = new byte[1048];

            int numBytesRead;
            while ((numBytesRead = in.read(buffer)) > 0) {
                out.write(buffer, 0, numBytesRead);
            }

            in.close();
            newFile.delete();

        } catch (Exception e) {
            response.sendRedirect(request.getContextPath() + "/appointment");
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
