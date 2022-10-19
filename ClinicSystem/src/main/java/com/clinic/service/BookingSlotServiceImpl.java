package com.clinic.service;

import com.clinic.dao.BookingSlotDao;
import com.clinic.dao.BookingSlotDaoImpl;
import com.clinic.dto.BookingAppointmentDto;
import com.clinic.dto.BookingSlotDto;
import com.clinic.entity.BookingSlot;
import com.clinic.model.BookingStatus;

public class BookingSlotServiceImpl implements BookingSlotService {

  BookingSlotDao bookingSlotDao;

  public BookingSlotServiceImpl() {
    bookingSlotDao = new BookingSlotDaoImpl();
  }

  @Override
  public BookingSlot findById(Long id) {
    return bookingSlotDao.findById(id);
  }

  @Override
  public BookingSlotDto findDtoById(Long id) {
    return bookingSlotDao.findDtoById(id);
  }

  @Override
  public BookingSlot confirmBooking(BookingAppointmentDto bookingAppointmentDto) {
    BookingSlot bookingSlot = new BookingSlot(bookingAppointmentDto);
    bookingSlot.setStatus(BookingStatus.BOOKED);
    Long bookingSlotId = bookingSlotDao.save(bookingSlot);
    return bookingSlotDao.findById(bookingSlotId);
  }
}
