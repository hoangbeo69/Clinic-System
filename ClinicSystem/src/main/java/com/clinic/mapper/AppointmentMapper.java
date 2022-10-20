/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.mapper;

import com.clinic.entity.Appointment;
import com.clinic.model.AppointmentStatus;
import com.clinic.model.TimeSlot;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 * @author nguye
 */
public class AppointmentMapper implements RowMapper<Appointment> {

  @Override
  public Appointment mapRow(ResultSet rs) {
    Appointment appointment = new Appointment();
    try {
      appointment.setId(rs.getLong("Id"));
      appointment.setDoctorId(rs.getLong("DoctorId"));
      appointment.setMedicalRecordId(rs.getLong("MedicalRecordId"));
      appointment.setBookingSlotId(rs.getLong("BookingSlotId"));
      appointment.setPatientId(rs.getLong("PatientId"));
      appointment.setStatus(AppointmentStatus.get(rs.getInt("Status")));
      java.sql.Date date = rs.getDate("DateSlot");
      if (date != null) {
        appointment.setDateSlot(new Date(date.getTime()));
      }
      appointment.setTimeSlot(TimeSlot.get(rs.getInt("TimeSlot")));
      appointment.setStatusDescription(rs.getString("StatusDescription"));
      appointment.setCreatedBy(rs.getString("CreatedBy"));
      appointment.setUpdateBy(rs.getString("UpdateBy"));
      appointment.setUpdatedDate(rs.getTimestamp("UpdateDate"));
      appointment.setCreatedDate(rs.getTimestamp("CreatedDate"));
      appointment.setCreatedDate(rs.getTimestamp("Description"));
      return appointment;
    } catch (SQLException throwables) {
      throwables.printStackTrace();
      return null;
    }
  }

}
