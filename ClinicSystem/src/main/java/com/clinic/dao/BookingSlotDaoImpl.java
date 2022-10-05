/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.dto.BookingSlotDto;
import com.clinic.entity.BookingSlot;
import com.clinic.mapper.AppointmentMapper;
import com.clinic.mapper.BookingSlotDtoMapper;
import com.clinic.mapper.BookingSlotMapper;
import com.clinic.util.CollectionsUtil;
import java.util.List;

/**
 * @author nguye
 */
public class BookingSlotDaoImpl extends AbstractDAO implements BookingSlotDao {

  @Override
  public Long save(BookingSlot bookingSlot) {
    StringBuilder sql = new StringBuilder("INSERT INTO BookingSlot ");
    sql.append("(DoctorId,TimeSlot,DateSlot,RoomId,Status) Values ");
    sql.append("(?,?,?,?,?)");
    return insert(sql.toString(), bookingSlot.getDoctorId(), bookingSlot.getTimeSlot(),
        bookingSlot.getDateSlot(), bookingSlot.getRoomId(), bookingSlot.getStatus());
  }

  @Override
  public Long update(BookingSlot bookingSlot) {
    StringBuilder sql = new StringBuilder("UPDATE BookingSlot ");
    sql.append("(DoctorId = ? ,TimeSlot = ? ,DateSlot = ? ,RoomId = ? ,Status = ? ) WHERE Id = ? ");
    boolean result = update(sql.toString(), bookingSlot.getDoctorId(), bookingSlot.getTimeSlot(),
        bookingSlot.getDateSlot(), bookingSlot.getRoomId(), bookingSlot.getStatus(),
        bookingSlot.getId());
    return result ? bookingSlot.getId() : null;
  }

  @Override
  public BookingSlot findById(Long id) {
    String sql = "SELECT * FROM BookingSlot WHERE Id = ? ";
    List<BookingSlot> bookingSlots = query(sql, new BookingSlotMapper(), id);
    return CollectionsUtil.isEmpty(bookingSlots) ? null : bookingSlots.get(0);
  }

  @Override
  public boolean delete(Long id) {
    String sql = "DELETE BookingSlot WHERE Id = ?";
    return delete(sql, id);
  }

  @Override
  public List<BookingSlot> findAll() {
    String sql = "SELECT * FROM BookingSlot";
    return query(sql, new BookingSlotMapper());
  }

  @Override
  public BookingSlotDto findDtoById(Long id) {
    String sql = "SELECT * FROM BookingSlot BS INNER JOIN ROOM R on BS.RoomId = R.Id" +
        "WHERE Id = ?";
    List<BookingSlotDto> bookingSlotDtos = query(sql, new BookingSlotDtoMapper(),id);
    return CollectionsUtil.isEmpty(bookingSlotDtos) ? null : bookingSlotDtos.get(0);
  }
}
