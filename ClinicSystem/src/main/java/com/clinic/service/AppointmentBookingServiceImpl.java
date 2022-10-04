/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.service;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.Appointment;
import com.clinic.entity.Patient;
import java.util.List;
import java.util.Map;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import org.apache.commons.lang3.ObjectUtils;

/**
 * @author nguye
 */
public class AppointmentBookingServiceImpl implements AppointmentBookingService {

  private PatientService patientService;
  private AppointmentService appointmentService;

  public AppointmentBookingServiceImpl() {
    patientService = new PatientServiceImpl();
    appointmentService = new AppointmentServiceImpl();
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
    Map<Long, Patient> patients = (Map<Long, Patient>) patientService.getMapPatientByListId(
        listPatientId);
    List<BookingAppointmentDto> bookingAppointmentDtos = appointments.stream().map((e)->{
      BookingAppointmentDto dto = new BookingAppointmentDto();
      dto.setAppointment(e);
      dto.setPatient(patients.get(e.getPatientId()));
      return dto;
    }).collect(Collectors.toList());
    return bookingAppointmentDtos;
  }

}
