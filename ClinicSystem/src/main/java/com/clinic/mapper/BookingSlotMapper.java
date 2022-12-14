/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.mapper;

import com.clinic.entity.BookingSlot;
import com.clinic.model.BookingStatus;
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
      bookingSlot.setId(rs.getLong(1));
      bookingSlot.setDoctorId(rs.getLong("DoctorId"));
      bookingSlot.setTimeSlot(TimeSlot.get(rs.getInt("TimeSlot")));
      bookingSlot.setDateSlot(rs.getDate("DateSlot"));
      bookingSlot.setRoomId(rs.getLong("RoomId"));
      bookingSlot.setStatus(BookingStatus.get(rs.getInt("Status")));

      return bookingSlot;
    } catch (SQLException throwables) {
      throwables.printStackTrace();
      return null;
    }
  }

}
