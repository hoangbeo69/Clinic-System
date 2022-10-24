package com.clinic.controller;

import com.clinic.entity.Account;
import com.clinic.service.AccountService;
import com.clinic.service.AccountServiceImpl;
import com.clinic.util.FormUtil;
import com.clinic.util.HttpUtil;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;

@Slf4j
@WebServlet(name = "UserDetailController", urlPatterns = {"/user/detail"})
public class UserDetailController extends HttpServlet {

  AccountService accountService;

  public UserDetailController() {
    accountService = new AccountServiceImpl();
  }

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
    if (StringUtils.isNotEmpty(request.getParameter("id")) && !request.getParameter("id").equalsIgnoreCase("null")) {
      Long id = Long.parseLong(request.getParameter("id"));
      request.setAttribute("user", accountService.getAccountById(id));
    }
    HttpUtil.setMessageResponse(request);
    request.getRequestDispatcher("/views/user-detail.jsp").forward(request, response);
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
    Account account = FormUtil.toModel(Account.class, request);
    log.info(account.toString());
    request.setCharacterEncoding("UTF-8");
    Account accountUpdated = null;
    if (account.getId() != 0) {
      accountUpdated = accountService.updateAccount(account);
    } else {
      accountUpdated = accountService.saveAccount(account);
    }
    if (accountUpdated != null) {
      response.sendRedirect(request.getContextPath() + "/user/detail?id=" + accountUpdated.getId() +
                            "&message=addnewuser_success&alert=success");
    } else {
      response.sendRedirect(request.getContextPath() + "/user/detail?id=" + accountUpdated.getId() +
                            "&message=addnewuser_fail&alert=danger");
    }
  }
}
