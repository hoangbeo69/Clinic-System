/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.model;

import java.util.Arrays;

/**
 * @author nguye
 */
public enum BookingStatus {
  AVAILABLE(0),
  BOOKED(1);
  private final Integer statusCode;

  BookingStatus(Integer statusCode) {
    this.statusCode = statusCode;
  }

  public Integer getStatusCode() {
    return statusCode;
  }

  public static BookingStatus get(int statusCode) {
    return Arrays.stream(BookingStatus.values())
        .parallel()
        .filter(e->e.getStatusCode() == statusCode)
        .findFirst()
        .orElse(AVAILABLE);
  }
}
