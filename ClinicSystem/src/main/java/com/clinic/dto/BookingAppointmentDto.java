/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dto;

import com.clinic.entity.Appointment;
import com.clinic.entity.Patient;
import com.clinic.model.AppointmentStatus;
import com.clinic.util.DateUtil;
import java.sql.Timestamp;
import java.util.Date;

/**
 * @author nguye
 */
public class BookingAppointmentDto {

  private Long id;
  private String username;
  private String password;
  private String fullName;
  private String phoneNumber;
  private String email;
  private String sex;
  private String dob;
  private Long doctorId;
  private Long medicalRecordId;
  private Integer timeSlotOrder;
  private String timeSlot;
  private String dateSlot;
  private AppointmentStatus status;
  private Integer statusCode;
  private String statusDescription;
  private String appointmentCode;
  private Long bookingSlotId;
  private String createdBy;
  private String updateBy;
  private Timestamp createdDate;
  private Timestamp updatedDate;
  private String description;
  private Long patientId;
  private String address;

  public BookingAppointmentDto() {
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public String getTimeSlot() {
    return timeSlot;
  }

  public void setTimeSlot(String timeSlot) {
    this.timeSlot = timeSlot;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public String getPhoneNumber() {
    return phoneNumber;
  }

  public void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getSex() {
    return sex;
  }

  public void setSex(String sex) {
    this.sex = sex;
  }

  public String getDob() {
    return dob;
  }

  public void setDob(String dob) {
    this.dob = dob;
  }

  public Long getDoctorId() {
    return doctorId;
  }

  public void setDoctorId(Long doctorId) {
    this.doctorId = doctorId;
  }

  public Long getMedicalRecordId() {
    return medicalRecordId;
  }

  public void setMedicalRecordId(Long medicalRecordId) {
    this.medicalRecordId = medicalRecordId;
  }

  public Integer getTimeSlotOrder() {
    return timeSlotOrder;
  }

  public void setTimeSlotOrder(Integer timeSlotOrder) {
    this.timeSlotOrder = timeSlotOrder;
  }

  public String getDateSlot() {
    return dateSlot;
  }

  public void setDateSlot(String dateSlot) {
    this.dateSlot = dateSlot;
  }

  public AppointmentStatus getStatus() {
    return status;
  }

  public void setStatus(AppointmentStatus status) {
    this.status = status;
  }

  public Integer getStatusCode() {
    return statusCode;
  }

  public void setStatusCode(Integer statusCode) {
    this.statusCode = statusCode;
  }

  public String getStatusDescription() {
    return statusDescription;
  }

  public void setStatusDescription(String statusDescription) {
    this.statusDescription = statusDescription;
  }

  public String getAppointmentCode() {
    return appointmentCode;
  }

  public void setAppointmentCode(String appointmentCode) {
    this.appointmentCode = appointmentCode;
  }

  public Long getBookingSlotId() {
    return bookingSlotId;
  }

  public void setBookingSlotId(Long bookingSlotId) {
    this.bookingSlotId = bookingSlotId;
  }

  public String getCreatedBy() {
    return createdBy;
  }

  public void setCreatedBy(String createdBy) {
    this.createdBy = createdBy;
  }

  public String getUpdateBy() {
    return updateBy;
  }

  public void setUpdateBy(String updateBy) {
    this.updateBy = updateBy;
  }

  public Timestamp getCreatedDate() {
    return createdDate;
  }

  public void setCreatedDate(Timestamp createdDate) {
    this.createdDate = createdDate;
  }

  public Timestamp getUpdatedDate() {
    return updatedDate;
  }

  public void setUpdatedDate(Timestamp updatedDate) {
    this.updatedDate = updatedDate;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Long getPatientId() {
    return patientId;
  }

  public void setPatientId(Long patientId) {
    this.patientId = patientId;
  }

  public BookingAppointmentDto(Long id, String username, String password, String fullName,
      String phoneNumber, String email, String sex, String dob, Long doctorId, Long medicalRecordId,
      Integer timeSlotOrder, String timeSlot, String dateSlot, AppointmentStatus status,
      Integer statusCode, String statusDescription, String appointmentCode, Long bookingSlotId,
      String createdBy, String updateBy, Timestamp createdDate, Timestamp updatedDate,
      String description, Long patientId) {
    this.id = id;
    this.username = username;
    this.password = password;
    this.fullName = fullName;
    this.phoneNumber = phoneNumber;
    this.email = email;
    this.sex = sex;
    this.dob = dob;
    this.doctorId = doctorId;
    this.medicalRecordId = medicalRecordId;
    this.timeSlotOrder = timeSlotOrder;
    this.timeSlot = timeSlot;
    this.dateSlot = dateSlot;
    this.status = status;
    this.statusCode = statusCode;
    this.statusDescription = statusDescription;
    this.appointmentCode = appointmentCode;
    this.bookingSlotId = bookingSlotId;
    this.createdBy = createdBy;
    this.updateBy = updateBy;
    this.createdDate = createdDate;
    this.updatedDate = updatedDate;
    this.description = description;
    this.patientId = patientId;
  }

  public void setAppointment(Appointment appointment) {
    this.id = appointment.getId();
    this.doctorId = appointment.getDoctorId();
    this.medicalRecordId = appointment.getMedicalRecordId();
    this.patientId = appointment.getPatientId();
    this.timeSlotOrder = appointment.getTimeSlotOrder();
    this.timeSlot = appointment.getTimeSlot().getTimeValue();
    this.dateSlot = DateUtil.getStrDate(appointment.getDateSlot());
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
    this.setId(patient.getId());
    this.setFullName(patient.getFullName());
    this.setPhoneNumber(patient.getPhoneNumber());
    this.setEmail(patient.getEmail());
    this.setDob(patient.getDob().toString());
    this.setSex(patient.getSex());
    this.address = patient.getAddress();
  }

}
