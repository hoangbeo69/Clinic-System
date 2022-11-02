package com.clinic.controller;

import com.clinic.entity.MedicalHistory;
import com.clinic.service.AccountService;
import com.clinic.service.AccountServiceImpl;
import com.clinic.service.MedicalHistoryService;
import com.clinic.service.MedicalHistoryServiceImpl;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Slf4j
@WebServlet(name = "MedicalRecordController", urlPatterns = {"/medicalRecord"})
public class MedicalRecordController extends HttpServlet {

    private AccountService accountService;

    private MedicalHistoryService medicalHistoryService;

    public MedicalRecordController() {
        this.accountService = new AccountServiceImpl();
        this.medicalHistoryService = new MedicalHistoryServiceImpl();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            if (request.getParameter("id") != null) {
                long id = Long.parseLong(request.getParameter("id"));
                request.setAttribute("medicalRecord", medicalHistoryService.findById(id));
                request.getRequestDispatcher("/views/medicalRecordDetail.jsp").forward(request, response);
            }
            else{
                List<MedicalHistory> medicalRecords = medicalHistoryService.getAll();
                request.setAttribute("medicalRecords", medicalRecords);
                request.getRequestDispatcher("/views/medicalRecord.jsp").forward(request, response);
            }
        } catch (Exception ex) {
            Logger.getLogger(MedicalRecordController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
