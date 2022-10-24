/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.model;

import java.util.Arrays;

/**
 * @author nguye
 */
public enum AppointmentStatus {
  PENDING(0),
  CONFIRMINFO(1),
  CONFIRMBOOKING(2),
  CONFIRMDOCTOR(3),
  RETURNRESULT(4),
  COMPLETE(5);

  private final Integer statusCode;

  AppointmentStatus(Integer statusCode) {
    this.statusCode = statusCode;
  }

  public static AppointmentStatus get(int statusCode) {
    return Arrays.stream(AppointmentStatus.values())
        .parallel()
        .filter(e->e.getStatusCode() == statusCode)
        .findFirst()
        .orElse(PENDING);
  }

  public Integer getStatusCode() {
    return statusCode;
  }

}
