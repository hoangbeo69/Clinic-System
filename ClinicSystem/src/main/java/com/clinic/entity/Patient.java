/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clinic.entity;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.util.DateUtil;
import java.util.Date;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang3.ObjectUtils;

/**
 * @author Long
 */
@Data
@Getter
@Setter
public class Patient extends Account {

  private String insuranceCode;
  private String identityCard;
  private String address;
  private String guardianFullname;
  private String guardianPhoneNumber;

  public Patient(String insuranceCode, String identityCard, String address, String guardianFullname,
      String guardianPhoneNumber, Long id, String username, String password, String fullName,
      String phoneNumber, String email, Date dob) {
    super(id, username, password, fullName, phoneNumber, email, dob);
    this.insuranceCode = insuranceCode;
    this.identityCard = identityCard;
    this.address = address;
    this.guardianFullname = guardianFullname;
    this.guardianPhoneNumber = guardianPhoneNumber;
  }

  public Patient(String insuranceCode, String identityCard, String address, String guardianFullname,
      String guardianPhoneNumber) {
    this.insuranceCode = insuranceCode;
    this.identityCard = identityCard;
    this.address = address;
    this.guardianFullname = guardianFullname;
    this.guardianPhoneNumber = guardianPhoneNumber;
  }

  public Patient(BookingAppointmentDto appointmentDto) {
    super();
    super.setId(appointmentDto.getPatientId());
    super.setFullName(appointmentDto.getFullName());
    super.setPhoneNumber(appointmentDto.getPhoneNumber());
    super.setEmail(appointmentDto.getEmail());
    super.setDob(appointmentDto.getDob());
    super.setSex(appointmentDto.getSex());
    this.insuranceCode = appointmentDto.getInsuranceCode();
    this.identityCard = appointmentDto.getIdentityCard();
    this.address = appointmentDto.getAddress();
    this.guardianFullname = appointmentDto.getGuardianFullname();
    this.guardianPhoneNumber = appointmentDto.getGuardianPhoneNumber();
  }

  public void setPatientInfo(Patient patient) {
    if (ObjectUtils.isNotEmpty(patient)) {
      this.insuranceCode = patient.getInsuranceCode();
      this.identityCard = patient.getIdentityCard();
      this.address = patient.getAddress();
      this.guardianFullname = patient.getGuardianFullname();
      this.guardianPhoneNumber = patient.getGuardianPhoneNumber();
    }
  }

  public Patient() {
    super();
  }
}
