package com.clinic.mapper;

import com.clinic.dto.BookingSlotDto;
import com.clinic.entity.BookingSlot;
import com.clinic.model.TimeSlot;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BookingSlotDtoMapper implements RowMapper<BookingSlotDto> {

  @Override
  public BookingSlotDto mapRow(ResultSet rs) {
    BookingSlotDto bookingSlot = new BookingSlotDto();
    try {
      bookingSlot.setId(rs.getLong(1));
      bookingSlot.setDoctorId(rs.getLong("DoctorId"));
      bookingSlot.setDateSlot(rs.getDate("MedicalRecordId"));
      bookingSlot.setTimeSlot(TimeSlot.get(rs.getInt("BookingSlotId")));
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
