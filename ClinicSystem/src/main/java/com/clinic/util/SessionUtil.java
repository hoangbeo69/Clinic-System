/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.util;

import javax.servlet.http.HttpServletRequest;

/**
 * @author nguye
 */
public class SessionUtil {

  private static SessionUtil sessionUtil = null;

  public static SessionUtil getInstance() {
    if (sessionUtil == null) {
      sessionUtil = new SessionUtil();
    }
    return sessionUtil;
  }

  public void putValue(HttpServletRequest request, String key, Object value) {
    request.getSession().setAttribute(key, value);
  }

  public void removeValue(HttpServletRequest request, String key) {
    request.getSession().removeAttribute(key);
  }

  public Object getValue(HttpServletRequest request, String key) {
    return request.getSession().getAttribute(key);
  }
}
