/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.entity;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.model.AppointmentStatus;
import com.clinic.model.TimeSlot;
import com.clinic.util.DateUtil;
import java.sql.Timestamp;
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
public class Appointment {

  private Long              id;
  private Long              doctorId;
  private Long              medicalRecordId;
  private Long              patientId;
  private TimeSlot          timeSlot;
  private Integer           timeSlotOrder;
  private Date              dateSlot;
  private AppointmentStatus status;
  private Integer           statusCode;
  private String            statusDescription;
  private String            appointmentCode;
  private Long              bookingSlotId;
  private String            createdBy;
  private String            updateBy;
  private Timestamp         createdDate;
  private Timestamp         updatedDate;
  private String            description;

  public Appointment(BookingAppointmentDto bookingAppointmentDto) {
    this.id = bookingAppointmentDto.getId();
    this.doctorId = bookingAppointmentDto.getDoctorId();
    this.medicalRecordId = bookingAppointmentDto.getMedicalRecordId();
    this.patientId = bookingAppointmentDto.getPatientId();
    this.timeSlotOrder = bookingAppointmentDto.getTimeSlotOrder();
    this.timeSlot = TimeSlot.get(timeSlotOrder);
    this.dateSlot = bookingAppointmentDto.getDateSlot();
    this.status = bookingAppointmentDto.getStatus();
    this.statusCode = bookingAppointmentDto.getStatusCode();
    this.setStatus(bookingAppointmentDto.getStatus());
    this.description = bookingAppointmentDto.getDescription();
    this.appointmentCode = bookingAppointmentDto.getAppointmentCode();
    this.bookingSlotId = bookingAppointmentDto.getBookingSlotId();
    this.createdBy = bookingAppointmentDto.getCreatedBy();
    this.updateBy = bookingAppointmentDto.getUpdateBy();
    this.createdDate = bookingAppointmentDto.getCreatedDate();
    this.updatedDate = bookingAppointmentDto.getUpdatedDate();
    this.description = bookingAppointmentDto.getDescription();
  }

  public Appointment() {
  }

  public void setStatus(AppointmentStatus status) {
    this.status = status;
    this.statusCode = status.getStatusCode();
  }

}
