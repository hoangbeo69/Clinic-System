package com.clinic.dto;

import com.clinic.model.BookingStatus;
import com.clinic.model.TimeSlot;
import java.util.Date;

public class BookingSlotDto {

  private Long id;
  private Long roomId;
  private Date dateSlot;
  private TimeSlot timeSlot;
  private Integer timeSlotOrder;
  private Long doctorId;
  private BookingStatus status;
  private Integer statusCode;
  private String roomName;
  private String description;

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
  }

  public Integer getTimeSlotOrder() {
    return timeSlotOrder;
  }

  public void setTimeSlotOrder(Integer timeSlotOrder) {
    this.timeSlotOrder = timeSlotOrder;
  }

  public Long getDoctorId() {
    return doctorId;
  }

  public void setDoctorId(Long doctorId) {
    this.doctorId = doctorId;
  }

  public BookingStatus getStatus() {
    return status;
  }

  public void setStatus(BookingStatus status) {
    this.status = status;
  }

  public Integer getStatusCode() {
    return statusCode;
  }

  public void setStatusCode(Integer statusCode) {
    this.statusCode = statusCode;
  }

  public String getRoomName() {
    return roomName;
  }

  public void setRoomName(String roomName) {
    this.roomName = roomName;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }
}
