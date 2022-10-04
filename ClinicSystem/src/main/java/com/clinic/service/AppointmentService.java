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

  public List<Appointment> findAll();

}
