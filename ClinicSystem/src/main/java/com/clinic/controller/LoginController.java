package com.clinic.controller;

import com.clinic.model.UserDetail;
import com.clinic.service.AccountService;
import com.clinic.service.AccountServiceImpl;
import com.clinic.service.UserDetailService;
import com.clinic.service.UserDetailServiceImpl;
import com.clinic.util.SessionUtil;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@WebServlet(name = "LoginController", urlPatterns = {"/login"})
public class LoginController extends HttpServlet {

  private AccountService accountService;

  public LoginController() {
    this.accountService = new AccountServiceImpl();
  }

  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String mess = "Username or password incorrect";
    UserDetail userDetail = accountService.findByUserDetailNameAndPassword(username, password);
    if (userDetail == null) {
      mess = "Username or password incorrect";
      request.setAttribute("mess", mess);
      request.getRequestDispatcher("/views/login.jsp").forward(request, response);
    } else {
      SessionUtil.getInstance().putValue(request, "USERMODEL", userDetail);
      log.info(userDetail.toString());
      response.sendRedirect("home");
    }
    request.setAttribute(mess, "mess");
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    try {
      request.getRequestDispatcher("/views/login.jsp").forward(request, response);
    } catch (Exception ex) {
      Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
    }
  }

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
