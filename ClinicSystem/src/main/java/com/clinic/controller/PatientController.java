package com.clinic.controller;

import com.clinic.entity.Patient;
import com.clinic.model.TimeSlot;
import com.clinic.service.PatientService;
import com.clinic.service.PatientServiceImpl;
import com.clinic.util.FormUtil;
import com.clinic.util.HttpUtil;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;

@WebServlet(name = "PatientController", urlPatterns = {"/patient/detail"})
public class PatientController extends HttpServlet {

  PatientService patientService;

  public PatientController() {
    patientService = new PatientServiceImpl();
  }

  /**
   * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
   * methods.
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
   * @param request  servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException      if an I/O error occurs
   */
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    if (StringUtils.isNotEmpty(request.getParameter("id"))) {
      Long id = Long.parseLong(request.getParameter("id"));
      Patient patient = patientService.findById(id);
      HttpUtil.setMessageResponse(request);
      request.setAttribute("TIMESLOTS", TimeSlot.values());
      request.setAttribute("patient", patient);
      HttpUtil.setMessageResponse(request);
    }
    request.getRequestDispatcher("/views/patient-information.jsp").forward(request, response);
  }

  /**
   * Handles the HTTP <code>POST</code> method.
   * @param request  servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException      if an I/O error occurs
   */
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
    response.setContentType("application/json");
    Patient patient = FormUtil.toModel(Patient.class, request);
    boolean result = false;
    if (ObjectUtils.isNotEmpty(patient.getId())) {
      result = patientService.update(patient);
      if (result) {
        response.sendRedirect(
            request.getContextPath() + "/patient/detail?id=" + patient.getId() + "&message" +
            "=updatedoctor_success&alert" + "=success");
      } else {
        response.sendRedirect(
            request.getContextPath() + "/patient/detail?id=" + patient.getId() + "&message" +
            "=updatedoctor_notsuccess&alert=danger");
      }
    }
  }

  /**
   * Returns a short description of the servlet.
   * @return a String containing servlet description
   */
  @Override
  public String getServletInfo() {
    return "Short description";
  }// </editor-fold>
}
