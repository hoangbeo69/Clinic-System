package com.clinic.controller;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.Doctor;
import com.clinic.service.AppointmentBookingService;
import com.clinic.service.AppointmentBookingServiceImpl;
import com.clinic.util.HttpUtil;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang3.StringUtils;

@WebServlet(name = "AppointmentController", urlPatterns = {"/appointment/detail"})
public class AppointmentController extends HttpServlet {

  AppointmentBookingService appointmentBookingService;

  public AppointmentController() {
    appointmentBookingService = new AppointmentBookingServiceImpl();
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
      BookingAppointmentDto bookingAppointmentDto = appointmentBookingService.findById(id);
      request.setAttribute("appointment", bookingAppointmentDto);
      HttpUtil.setMessageResponse(request);
    }
    request.getRequestDispatcher("/views/appointment-information.jsp").forward(request, response);
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
    processRequest(request, response);
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
