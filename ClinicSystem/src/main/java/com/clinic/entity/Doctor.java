/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clinic.entity;

import java.util.Date;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.apache.commons.lang3.ObjectUtils;

/**
 * @author Admin
 */
@Data
@Getter
@Setter
@ToString
public class Doctor extends Account {

  private String specialization;

  public Doctor(Long id, String username, String password, String fullName, String phoneNumber,
      String email, Date dob) {
    super(id, username, password, fullName, phoneNumber, email, dob);
  }

  public Doctor() {
    super();
  }

  public void setDoctorInfor(Doctor doctor) {
    if (ObjectUtils.isNotEmpty(doctor)) {
      this.specialization = doctor.getSpecialization();
    }
  }


}
