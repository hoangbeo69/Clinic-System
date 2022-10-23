/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.service;

import com.clinic.dao.AppointmentDao;
import com.clinic.dao.AppointmentDaoImpl;
import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.Appointment;
import java.sql.Timestamp;
import java.util.List;
import org.apache.commons.lang3.ObjectUtils;

/**
 * @author nguye
 */
public class AppointmentServiceImpl implements AppointmentService {

  AppointmentDao appointmentDao;

  public AppointmentServiceImpl() {
    appointmentDao = new AppointmentDaoImpl();
  }

  @Override
  public Long createNew(BookingAppointmentDto bookingAppointmentDto) {
    if (ObjectUtils.isEmpty(bookingAppointmentDto)) {
      return null;
    }
    Appointment appointment = new Appointment(bookingAppointmentDto);
    appointment.setId(null);
    appointment.setCreatedDate(new Timestamp(System.currentTimeMillis()));
    appointment.setUpdatedDate(new Timestamp(System.currentTimeMillis()));
    return appointmentDao.save(appointment);
  }

  @Override
  public List<Appointment> findAll() {
    return appointmentDao.findAll();
  }

  @Override
  public Appointment findById(Long id) {
    return appointmentDao.findById(id);
  }

  @Override
  public boolean update(BookingAppointmentDto bookingAppointmentDto) {
    if (ObjectUtils.isEmpty(bookingAppointmentDto)) {
      return false;
    }
    Appointment appointment = new Appointment(bookingAppointmentDto);
    appointment.setUpdatedDate(new Timestamp(System.currentTimeMillis()));
    return appointmentDao.update(appointment) != null;
  }

}
