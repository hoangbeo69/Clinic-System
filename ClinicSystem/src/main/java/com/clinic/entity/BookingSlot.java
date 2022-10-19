/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.entity;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.model.BookingStatus;
import com.clinic.model.TimeSlot;
import java.util.Date;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * @author nguye
 */
@Data
@Getter
@Setter
public class BookingSlot {

  private Long          id;
  private Long          roomId;
  private Date          dateSlot;
  private TimeSlot      timeSlot;
  private Integer       timeSlotOrder;
  private Long          doctorId;
  private BookingStatus status;
  private Integer       statusCode;

  public BookingStatus getStatus() {
    return status;
  }

  public BookingSlot() {
  }

  public BookingSlot(BookingAppointmentDto bookingAppointmentDto) {
    this.roomId = bookingAppointmentDto.getRoomId();
    this.dateSlot = bookingAppointmentDto.getDateSlot();
    this.timeSlotOrder = bookingAppointmentDto.getTimeSlotOrder();
    this.doctorId = bookingAppointmentDto.getDoctorId();
  }

  public void setStatus(BookingStatus status) {
    this.status = status;
    this.statusCode = status.getStatusCode();
  }


  public void setTimeSlot(TimeSlot timeSlot) {
    this.timeSlot = timeSlot;
    this.timeSlotOrder = timeSlot.getSlotOrder();
  }


}
