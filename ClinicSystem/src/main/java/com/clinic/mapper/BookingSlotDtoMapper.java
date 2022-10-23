package com.clinic.mapper;

import com.clinic.dto.BookingSlotDto;
import com.clinic.entity.BookingSlot;
import com.clinic.model.TimeSlot;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BookingSlotDtoMapper implements RowMapper<BookingSlotDto> {

  @Override
  public BookingSlotDto mapRow(ResultSet rs) {
    BookingSlotDto bookingSlot = new BookingSlotDto();
    try {
      bookingSlot.setId(rs.getLong(1));
      bookingSlot.setRoomId(rs.getLong("RoomId"));
      bookingSlot.setDateSlot(new Date(rs.getDate("DateSlot").getTime()));
      bookingSlot.setDoctorId(rs.getLong("DoctorId"));
      bookingSlot.setTimeSlot(TimeSlot.get(rs.getInt("TimeSlot")));
      bookingSlot.setStatusCode(rs.getInt("Status"));
      bookingSlot.setRoomName(rs.getString("RoomName"));
      bookingSlot.setDescription(rs.getString("Description"));
      return bookingSlot;
    } catch (SQLException throwables) {
      throwables.printStackTrace();
      return null;
    }
  }
}
