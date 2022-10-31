package com.clinic.service;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.dto.BookingSlotDto;
import com.clinic.entity.BookingSlot;

public interface BookingSlotService {

  BookingSlot findById(Long id);

  BookingSlotDto findDtoById(Long id);

  BookingSlot confirmBooking(BookingAppointmentDto bookingAppointmentDto);

  long save(BookingSlot bookingSlot);

}
