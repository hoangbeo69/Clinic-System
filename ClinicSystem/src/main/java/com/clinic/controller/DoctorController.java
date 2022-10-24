package com.clinic.controller;

import com.clinic.entity.Doctor;
import com.clinic.service.DoctorService;
import com.clinic.service.DoctorServiceImpl;
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


@WebServlet(name = "DoctorController", urlPatterns = {"/doctor/detail"})
public class DoctorController extends HttpServlet {

  private DoctorService doctorService;

  public DoctorController() {
    this.doctorService = new DoctorServiceImpl();
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
    response.setContentType("text/html;charset=UTF-8");
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
      Doctor doctor = doctorService.findById(id);
      request.setAttribute("doctor", doctor);
      HttpUtil.setMessageResponse(request);
    }
    request.getRequestDispatcher("/views/doctor-information.jsp").forward(request, response);
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
    Doctor doctor = FormUtil.toModel(Doctor.class, request);
    boolean result = false;
    if (ObjectUtils.isNotEmpty(doctor.getId()) && doctor.getId() != 0) {
      result = doctorService.udpate(doctor);
      if (result) {
        response.sendRedirect(
            request.getContextPath() + "/doctor/detail?id=" + doctor.getId() + "&message" +
            "=updatedoctor_success&alert" + "=success");
      } else {
        response.sendRedirect(
            request.getContextPath() + "/doctor/detail?id=" + doctor.getId() + "&message" +
            "=updatedoctor_notsuccess&alert=danger");
      }
    } else {
      Long id = doctorService.createNew(doctor);
      if (id != null) {
        response.sendRedirect(request.getContextPath() + "/doctor/detail?id=" + id +
                              "&message=newdoctor_success&alert" + "=success");
      } else {
        response.sendRedirect(request.getContextPath() + "/doctor/detail?id=" + id +
                              "&message=newdoctor_notsuccess&alert" + "=danger");
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
