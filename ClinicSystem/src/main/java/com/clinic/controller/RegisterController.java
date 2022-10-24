package com.clinic.controller;

import com.clinic.dao.AccountDao;
import com.clinic.dao.AccountDaoImpl;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {

  private AccountDao accountDao;

  public RegisterController() {
    this.accountDao = new AccountDaoImpl();
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    try {
      request.getRequestDispatcher("/views/register.jsp").forward(request, response);
    } catch (IOException | ServletException e) {
    }
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String repassword = request.getParameter("repassword");

    String mess = null;
    if (username.isEmpty()) {
      mess = "Email is empty";
    } else if (!username.matches("[\\w]+@[\\w]+\\.[a-zA-Z]{2,3}")) {
      mess = "Username must be email";
    } else if (password.length() <= 6) {
      mess = "Password must be longger than 6 character";
    } else if (!password.equals(repassword)) {
      mess = "Pass and rePass not match";
    }

    if (mess != null) {
      request.setAttribute("mess", mess);
      request.getRequestDispatcher("/views/register.jsp").forward(request, response);
    } else {
      //      UserDAO userdao = new UserDAO();
      //      Account a = accountDao.findByEmailOrUsername(username);
      //      if (a == null) {
      //        userdao.register(username, password);
      //        request.setAttribute("mess", "Register successfully");
      //        request.getRequestDispatcher("view/register.jsp").forward(request, response);
      //      } else {
      //        request.setAttribute("mess", "Account already exists");
      //        request.getRequestDispatcher("view/register.jsp").forward(request, response);
      //      }
    }
  }
}
