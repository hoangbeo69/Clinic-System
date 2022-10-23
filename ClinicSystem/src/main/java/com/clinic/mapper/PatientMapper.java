/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.mapper;

import com.clinic.entity.Patient;
import com.clinic.model.AccountStatus;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PatientMapper implements RowMapper<Patient> {

  @Override
  public Patient mapRow(ResultSet rs) {
    Patient patient = new Patient();
    try {
      Long id = rs.getLong(1);
      if (id != null) {
        patient.setId(id);
      }

      patient.setInsuranceCode(rs.getString("InsuranceCode"));
      patient.setIdentityCard(rs.getString("IdentityCard"));
      patient.setGuardianPhoneNumber(rs.getString("GuardianPhoneNumber"));
      patient.setGuardianFullname(rs.getString("GuardianFullname"));
      patient.setAddress(rs.getString("Address"));
      patient.setUsername(rs.getString("Username"));
      patient.setFullName(rs.getString("Fullname"));
      patient.setPhoneNumber(rs.getString("PhoneNumber"));
      patient.setEmail(rs.getString("Email"));
      patient.setDob(new java.util.Date(rs.getDate("Dob").getTime()));
      patient.setStatus(AccountStatus.get(rs.getInt("Status")));
      patient.setSex(rs.getString("Sex"));

      return patient;
    } catch (SQLException throwables) {
      throwables.printStackTrace();
      return null;
    }
  }

}
