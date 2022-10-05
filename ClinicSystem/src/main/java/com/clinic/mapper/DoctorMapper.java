/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.mapper;

import com.clinic.entity.Doctor;
import com.clinic.model.AccountStatus;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author nguye
 */
public class DoctorMapper implements RowMapper<Doctor> {

  @Override
  public Doctor mapRow(ResultSet rs) {
    Doctor doctor = new Doctor();
    try {
      Long id = rs.getLong(1);
      if (id != null) {
        doctor.setId(id);
      }
      doctor.setSpecialization(rs.getString("Specialization"));
      doctor.setUsername(rs.getString("Username"));
      doctor.setFullName(rs.getString("Fullname"));
      doctor.setPhoneNumber(rs.getString("Phonenumber"));
      doctor.setEmail(rs.getString("Email"));
      doctor.setDob(new java.util.Date(rs.getDate("Dob").getTime()));
      doctor.setStatus(AccountStatus.get(rs.getInt("Status")));
      doctor.setSex(rs.getString("Sex"));
      return doctor;
    } catch (SQLException throwables) {
      throwables.printStackTrace();
      return null;
    }
  }

}
