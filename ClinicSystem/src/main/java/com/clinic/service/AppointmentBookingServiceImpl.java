/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.service;

import com.clinic.dao.BookingSlotDao;
import com.clinic.dao.BookingSlotDaoImpl;
import com.clinic.dto.BookingAppointmentDto;
import com.clinic.dto.BookingSlotDto;
import com.clinic.entity.Appointment;
import com.clinic.entity.BookingSlot;
import com.clinic.entity.Patient;
import com.clinic.util.CollectionsUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import org.apache.commons.lang3.ObjectUtils;

/**
 * @author nguye
 */
public class AppointmentBookingServiceImpl implements AppointmentBookingService {

  private PatientService patientService;
  private AppointmentService appointmentService;

  private BookingSlotDao bookingSlotDao;

  public AppointmentBookingServiceImpl() {
    patientService = new PatientServiceImpl();
    appointmentService = new AppointmentServiceImpl();
    bookingSlotDao = new BookingSlotDaoImpl();
  }

  @Override
  public boolean booking(BookingAppointmentDto bookingAppointmentDto) {
    Long id = patientService.createNew(bookingAppointmentDto);
    if (ObjectUtils.isNotEmpty(id)) {
      bookingAppointmentDto.setPatientId(id);
      Long appointmentId = appointmentService.createNew(bookingAppointmentDto);
      return ObjectUtils.isNotEmpty(appointmentId);
    }
    return false;
  }

  @Override
  public List<BookingAppointmentDto> findAll() {
    List<Appointment> appointments = appointmentService.findAll();
    List<Long> listPatientId = appointments.stream().map(Appointment::getPatientId)
        .collect(Collectors.toList());
    if(CollectionsUtil.isEmpty(listPatientId)){
      return new ArrayList<>();
    }
    Map<Long, Patient> patients = (Map<Long, Patient>) patientService.getMapPatientByListId(
        listPatientId);
    return appointments.stream().map(e->{
      BookingAppointmentDto dto = new BookingAppointmentDto();
      dto.setAppointment(e);
      dto.setPatient(patients.get(e.getPatientId()));
      return dto;
    }).collect(Collectors.toList());
  }

  @Override
  public BookingAppointmentDto findById(Long id) {
    BookingAppointmentDto bookingAppointmentDto = new BookingAppointmentDto();
    Appointment appointment = null;
    if (ObjectUtils.isNotEmpty(id)) {
      appointment = appointmentService.findById(id);
      if (ObjectUtils.isNotEmpty(appointment)) {
        bookingAppointmentDto.setAppointment(appointment);
      }
    }
    if(appointment == null){
      return  null;
    }

    Long bookingSlotId = appointment.getBookingSlotId();
    if (ObjectUtils.isNotEmpty(bookingSlotId)) {
      BookingSlotDto bookingSlotDto = bookingSlotDao.findDtoById(bookingSlotId);
      if (ObjectUtils.isNotEmpty(bookingSlotDto)) {
        bookingAppointmentDto.setBookingSlot(bookingSlotDto);
      }
    }

    Long patientId = appointment.getPatientId();
    if (ObjectUtils.isNotEmpty(patientId)) {
      Patient patient = patientService.findById(patientId);
      if (ObjectUtils.isNotEmpty(patient)) {
        bookingAppointmentDto.setPatient(patient);
      }
    }

    return bookingAppointmentDto;
  }

}
