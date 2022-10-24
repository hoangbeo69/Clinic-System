/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clinic.filter;

import com.clinic.model.UserDetail;
import com.clinic.util.SessionUtil;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;

/**
 * @author ADMIN
 */
@Slf4j
public class HomeFilter implements Filter {

  private ServletContext servletContext;

  @Override
  public void init(FilterConfig filterConfig) throws ServletException {
    this.servletContext = filterConfig.getServletContext();
  }

  @Override
  public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
      FilterChain chain) throws IOException, ServletException {
    HttpServletRequest request = (HttpServletRequest) servletRequest;
    HttpServletResponse response = (HttpServletResponse) servletResponse;
    String url = request.getRequestURI();
    if (url.contains("/wellcome") || url.contains("/login") || url.contains("/css") ||
        url.contains("/js") || url.contains("/vendor") || url.contains("/assets") ||
        url.contains("/wellcome") || url.equals("/ClinicSystem/")) {
      chain.doFilter(servletRequest, servletResponse);
    } else {
      UserDetail userDetail = (UserDetail) SessionUtil.getInstance().getValue(request, "USERMODEL");
      if (userDetail != null) {
        if (userDetail.getStrRole() != null && userDetail.getStrRole().contains("ADMIN")) {
          chain.doFilter(servletRequest, servletResponse);
        } else {
          response.sendRedirect(request.getContextPath() + "/wellcome");
        }
      } else {
        response.sendRedirect(request.getContextPath() + "/wellcome");
      }
    }
  }

  @Override
  public void destroy() {

  }
}
