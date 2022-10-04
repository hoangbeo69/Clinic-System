/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clinic.controller;

import com.clinic.dao.AccountDao;
import com.clinic.dao.AccountDaoImpl;
import com.clinic.dao.PatientDao;
import com.clinic.dao.PatientDaoImpl;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ResetPasswordController", urlPatterns = {"/ResetPassword"})
public class ResetPasswordController extends HttpServlet {

  private PatientDao patientDao;
  private AccountDao accountDao;

  public ResetPasswordController() {
    this.patientDao = new PatientDaoImpl();
    this.accountDao = new AccountDaoImpl();
  }


  /**
   * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
   * @param request  servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException      if an I/O error occurs
   */
  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    String sendFrom = "tungnguyenn050499@gmail.com";
    String passwordFrom = "blqfwuylhwdpbptv";
    String sendTo = "";
    String subject = "Reset password";
    String newPassword = "Asd123@";

//        Patient patient = patientDao.getPatientByEmail(request.getParameter("resetEmail"));
//        if (patient != null) {
//            sendTo = patient.getEmail();
//            try {
//                SendEMail.send(sendTo, subject, newPassword, sendFrom, passwordFrom);
//
////                accountDao.resetPassword(newPassword, sendTo);
//
//                request.setAttribute("alert", "        <script>\n"
//                        + "            swal(\"Send success!!\", \"\", \"success\");\n"
//                        + "        </script>");
//            } catch (MessagingException ex) {
//                Logger.getLogger(ResetPasswordController.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        } else {
//            request.setAttribute("alert", "");
//            request.setAttribute("alert", "        <script>\n"
//                    + "            swal(\"Send fail!\", \"\", \"error\");\n"
//                    + "        </script>");
//        }

    request.getRequestDispatcher("/views/login.jsp").forward(request, response);
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
    processRequest(request, response);
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
