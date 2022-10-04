/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clinic.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ChangePasswordController", urlPatterns = {"/changePasswordController"})
public class ChangePasswordController extends HttpServlet {


  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");

  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    try {
      request.getRequestDispatcher("/views/changePassword.jsp").forward(request, response);
    } catch (IOException | ServletException e) {
      e.printStackTrace();
    }

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String newPassword = request.getParameter("new_password");
    String confirmPassword = request.getParameter("confirm_repassword");
//        UserDAO userDAO = new UserDAO();
//        HttpSession session = request.getSession();
//        Account account = (Account)session.getAttribute("acc");
//        if((newPassword.equals(confirmPassword))){
//            userDAO.changePassword(newPassword, account.getUsername());
//            request.setAttribute("mess", "Your password changed successfully.");
//            request.getRequestDispatcher("views/login.jsp").forward(request, response);
//        }else if (newPassword.equals("")||confirmPassword.equals("")){
//            request.setAttribute("username", account.getUsername());
//            request.setAttribute("mess", "New password and confirm password, both are required.");
//            request.getRequestDispatcher("view/changePassword.jsp").forward(request, response);
//        }else{
//            request.setAttribute("username", account.getUsername());
//            request.setAttribute("mess", "New password and confirm password does not match.");
//            request.getRequestDispatcher("view/changePassword.jsp").forward(request, response);
//        }

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
