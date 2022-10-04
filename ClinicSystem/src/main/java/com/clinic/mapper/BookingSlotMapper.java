/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.mapper;

import com.clinic.entity.BookingSlot;
import com.clinic.model.TimeSlot;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author nguye
 */
public class BookingSlotMapper implements RowMapper<BookingSlot> {

  @Override
  public BookingSlot mapRow(ResultSet rs) {
    BookingSlot bookingSlot = new BookingSlot();
    try {
      bookingSlot.setId(rs.getLong("Id"));
      bookingSlot.setDoctorId(rs.getLong("DoctorId"));
      bookingSlot.setDateSlot(rs.getDate("MedicalRecordId"));
      bookingSlot.setTimeSlot(TimeSlot.get(rs.getInt("BookingSlotId")));
      bookingSlot.setStatusCode(rs.getInt("Status"));

      return bookingSlot;
    } catch (SQLException throwables) {
      throwables.printStackTrace();
      return null;
    }
  }

}
