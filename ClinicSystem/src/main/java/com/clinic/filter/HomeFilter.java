/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clinic.filter;

import com.clinic.entity.Doctor;
import com.clinic.model.UserDetail;
import com.clinic.service.DoctorServiceImpl;
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
                url.contains("/js") || url.contains("/vendor") || url.contains("/assets") || url.equals("/ClinicSystem/")
        ||  url.contains("/bookingAppointment")) {
            chain.doFilter(servletRequest, servletResponse);
        } else {
            UserDetail userDetail = (UserDetail) SessionUtil.getInstance().getValue(request, "USERMODEL");
            boolean isAuthorized = true;
            if (userDetail != null) {
                if (url.contains("/appointment/review") && !userDetail.getStrRole().contains("MANAGER")) {
                    isAuthorized = false;
                }
                if (url.contains("/schedule")) {
                    // not doctor or admin
                    if (new DoctorServiceImpl().findById(userDetail.getId()) == null && !userDetail.getStrRole().contains("MANAGER")) {
                        isAuthorized = false;
                    }
                }
                if (url.endsWith("/medicalRecord")) {
                    // not doctor or admin
                    if (new DoctorServiceImpl().findById(userDetail.getId()) == null && !userDetail.getStrRole().contains("MANAGER")) {
                        isAuthorized = false;
                    }
                }
                if (url.contains("/appointment/confirmBooking") && !userDetail.getStrRole().contains("MANAGER")) {
                    isAuthorized = false;
                }
                if (url.contains("/appointment/review") && new DoctorServiceImpl().findById(userDetail.getId()) == null) {
                    isAuthorized = false;
                }
                if (!isAuthorized) {
                    request.getRequestDispatcher("/views/unauthorized.jsp").forward(servletRequest, servletResponse);
                } else {
                    chain.doFilter(servletRequest, servletResponse);
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
