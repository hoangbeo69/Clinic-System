/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.entity;

import com.clinic.model.BookingStatus;
import com.clinic.model.TimeSlot;
import java.util.Date;

/**
 * @author nguye
 */
public class BookingSlot {

  private Long id;
  private Long roomId;
  private Date dateSlot;
  private TimeSlot timeSlot;
  private Integer timeSlotOrder;
  private Long doctorId;
  private BookingStatus status;
  private Integer statusCode;

  public BookingStatus getStatus() {
    return status;
  }

  public void setStatus(BookingStatus status) {
    this.status = status;
    this.statusCode = status.getStatusCode();
  }

  public Integer getStatusCode() {
    return statusCode;
  }

  public void setStatusCode(Integer statusCode) {
    this.statusCode = statusCode;
  }


  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Long getRoomId() {
    return roomId;
  }

  public void setRoomId(Long roomId) {
    this.roomId = roomId;
  }

  public Date getDateSlot() {
    return dateSlot;
  }

  public void setDateSlot(Date dateSlot) {
    this.dateSlot = dateSlot;
  }

  public TimeSlot getTimeSlot() {
    return timeSlot;
  }

  public void setTimeSlot(TimeSlot timeSlot) {
    this.timeSlot = timeSlot;
    this.timeSlotOrder = timeSlot.getSlotOrder();
  }

  public Integer getTimeSlotOrder() {
    return timeSlotOrder;
  }

  public Long getDoctorId() {
    return doctorId;
  }

  public void setDoctorId(Long doctorId) {
    this.doctorId = doctorId;
  }

}
