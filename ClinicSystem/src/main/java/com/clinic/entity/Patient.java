/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clinic.entity;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.util.DateUtil;
import java.util.Date;
import org.apache.commons.lang3.ObjectUtils;
/**
 *
 * @author Long
 */
public class Patient extends Account {

    private String insuranceCode;
    private String identityCard;
    private String address;
    private String guardianFullname;
    private String guardianPhoneNumber;

    public Patient(String insuranceCode, String identityCard, String address, String guardianFullname, String guardianPhoneNumber, Long id, String username, String password, String fullName, String phoneNumber, String email, Date dob) {
        super(id, username, password, fullName, phoneNumber, email, dob);
        this.insuranceCode = insuranceCode;
        this.identityCard = identityCard;
        this.address = address;
        this.guardianFullname = guardianFullname;
        this.guardianPhoneNumber = guardianPhoneNumber;
    }

    public Patient(String insuranceCode, String identityCard, String address, String guardianFullname, String guardianPhoneNumber) {
        this.insuranceCode = insuranceCode;
        this.identityCard = identityCard;
        this.address = address;
        this.guardianFullname = guardianFullname;
        this.guardianPhoneNumber = guardianPhoneNumber;
    }

    public Patient(BookingAppointmentDto appointmentDto) {
        super();
        super.setId(appointmentDto.getId());
        super.setFullName(appointmentDto.getFullName());
        super.setPhoneNumber(appointmentDto.getPhoneNumber());
        super.setEmail(appointmentDto.getEmail());
        super.setDob(DateUtil.getDate(appointmentDto.getDob()));
        super.setSex(appointmentDto.getSex());
        this.insuranceCode = insuranceCode;
        this.identityCard = identityCard;
        this.address = address;
        this.guardianFullname = guardianFullname;
        this.guardianPhoneNumber = guardianPhoneNumber;
    }

    public void setPatientInfo(Patient patient) {
        if (ObjectUtils.isNotEmpty(patient)) {
            this.insuranceCode = insuranceCode;
            this.identityCard = identityCard;
            this.address = address;
            this.guardianFullname = guardianFullname;
            this.guardianPhoneNumber = guardianPhoneNumber;
        }
    }

    public Patient() {
        super();
    }

    public void setInsuranceCode(String insuranceCode) {
        this.insuranceCode = insuranceCode;
    }

    public void setIdentityCard(String identityCard) {
        this.identityCard = identityCard;
    }

    public String getInsuranceCode() {
        return insuranceCode;
    }

    public String getIdentityCard() {
        return identityCard;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGuardianFullname() {
        return guardianFullname;
    }

    public void setGuardianFullname(String guardianFullname) {
        this.guardianFullname = guardianFullname;
    }

    public String getGuardianPhoneNumber() {
        return guardianPhoneNumber;
    }

    public void setGuardianPhoneNumber(String guardianPhoneNumber) {
        this.guardianPhoneNumber = guardianPhoneNumber;
    }

}
