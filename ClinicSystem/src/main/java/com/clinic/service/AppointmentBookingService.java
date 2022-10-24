/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.service;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.MedicalHistory;
import java.util.List;

/**
 * @author nguye
 */
public interface AppointmentBookingService {

  boolean booking(BookingAppointmentDto bookingAppointmentDto);

  List<BookingAppointmentDto> findAll();

  BookingAppointmentDto findById(Long id);

  boolean confirmBooking(BookingAppointmentDto bookingAppointmentDto);

  boolean confirmInfo(BookingAppointmentDto bookingAppointmentDto);

  boolean confirmDoctor(BookingAppointmentDto bookingAppointmentDto);

  boolean returnResult(Long appointmentId, MedicalHistory medicalHistory);

  boolean complete(BookingAppointmentDto bookingAppointmentDto);
}
