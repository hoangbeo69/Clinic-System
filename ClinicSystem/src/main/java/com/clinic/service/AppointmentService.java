/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.service;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.Appointment;
import java.util.List;

/**
 * @author nguye
 */
public interface AppointmentService {

  Long createNew(BookingAppointmentDto bookingAppointmentDto);

  List<Appointment> findAll();

  Appointment findById(Long id);

  boolean update(BookingAppointmentDto bookingAppointmentDto);

  boolean update(Appointment appointment);
}
