/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dto;

import com.clinic.entity.Appointment;
import com.clinic.entity.Patient;
import com.clinic.model.AppointmentStatus;
import java.sql.Timestamp;
import java.util.Date;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @author nguye
 */
@Data
@Getter
@Setter
@ToString
public class BookingAppointmentDto {

  private Long              id;
  private String            username;
  private String            password;
  private String            fullName;
  private String            phoneNumber;
  private String            email;
  private String            sex;
  private Date              dob;
  private Long              doctorId;
  private Long              medicalRecordId;
  private Integer           timeSlotOrder;
  private String            timeSlot;
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
  private Long              patientId;
  private String            address;
  private Long              roomId;
  private String            roomName;
  private String            roomDescription;
  private String            guardianFullname;
  private String            guardianPhoneNumber;
  private String            insuranceCode;
  private String            identityCard;

  public BookingAppointmentDto() {
  }

  public void setStatus(AppointmentStatus status) {
    this.status = status;
    this.statusCode = status.getStatusCode();
  }

  public void setAppointment(Appointment appointment) {
    this.id = appointment.getId();
    this.doctorId = appointment.getDoctorId();
    this.medicalRecordId = appointment.getMedicalRecordId();
    this.patientId = appointment.getPatientId();
    this.timeSlotOrder = appointment.getTimeSlotOrder();
    this.timeSlot = appointment.getTimeSlot().getTimeValue();
    this.dateSlot = appointment.getDateSlot();
    this.status = appointment.getStatus();
    this.statusCode = appointment.getStatusCode();
    this.statusDescription = appointment.getDescription();
    this.appointmentCode = appointment.getAppointmentCode();
    this.bookingSlotId = appointment.getBookingSlotId();
    this.createdBy = appointment.getCreatedBy();
    this.updateBy = appointment.getUpdateBy();
    this.createdDate = appointment.getCreatedDate();
    this.updatedDate = appointment.getUpdatedDate();
    this.description = appointment.getDescription();
  }

  public void setPatient(Patient patient) {
    this.patientId = patient.getId();
    this.fullName = patient.getFullName();
    this.email = patient.getEmail();
    this.dob = patient.getDob();
    this.sex = patient.getSex();
    this.phoneNumber = patient.getPhoneNumber();
    this.guardianFullname = patient.getGuardianFullname();
    this.guardianPhoneNumber = patient.getGuardianPhoneNumber();
    this.address = patient.getAddress();
    this.insuranceCode = patient.getInsuranceCode();
    this.identityCard = patient.getIdentityCard();
  }

  public void setBookingSlot(BookingSlotDto bookingSlotDto) {
    this.bookingSlotId = bookingSlotDto.getId();
    this.roomId = bookingSlotDto.getRoomId();
    this.dateSlot = bookingSlotDto.getDateSlot();
    this.timeSlot = bookingSlotDto.getTimeSlot().getTimeValue();
    this.timeSlotOrder = bookingSlotDto.getTimeSlot().getSlotOrder();
    this.doctorId = bookingSlotDto.getDoctorId();
    this.roomDescription = bookingSlotDto.getDescription();
    this.roomName = bookingSlotDto.getRoomName();
    this.roomId = bookingSlotDto.getRoomId();
  }

}
