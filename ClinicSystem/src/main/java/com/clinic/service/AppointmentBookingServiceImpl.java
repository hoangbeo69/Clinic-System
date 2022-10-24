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
import com.clinic.entity.MedicalHistory;
import com.clinic.entity.Patient;
import com.clinic.model.AppointmentStatus;
import com.clinic.util.CollectionsUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.apache.commons.lang3.ObjectUtils;

/**
 * @author nguye
 */
public class AppointmentBookingServiceImpl implements AppointmentBookingService {

  private PatientService     patientService;
  private AppointmentService appointmentService;
  private BookingSlotDao     bookingSlotDao;

  private BookingSlotService bookingSlotService;

  private MedicalHistoryService medicalHistoryService;

  public AppointmentBookingServiceImpl() {
    patientService = new PatientServiceImpl();
    appointmentService = new AppointmentServiceImpl();
    bookingSlotDao = new BookingSlotDaoImpl();
    bookingSlotService = new BookingSlotServiceImpl();
    medicalHistoryService = new MedicalHistoryServiceImpl();
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
    List<Long> listPatientId = appointments.stream()
        .map(Appointment::getPatientId)
        .collect(Collectors.toList());
    if (CollectionsUtil.isEmpty(listPatientId)) {
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
    if (appointment == null) {
      return null;
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

  @Override
  public boolean confirmBooking(BookingAppointmentDto bookingAppointmentDto) {
    if (bookingAppointmentDto == null || bookingAppointmentDto.getId() == null) {
      return false;
    }
    bookingAppointmentDto = com.clinic.util.ObjectUtils.merge(
        findById(bookingAppointmentDto.getId()), bookingAppointmentDto);
    BookingSlot bookingSlot = bookingSlotService.confirmBooking(bookingAppointmentDto);
    bookingAppointmentDto.setBookingSlot(bookingSlotDao.findDtoById(bookingSlot.getId()));
    return appointmentService.update(bookingAppointmentDto);
  }

  @Override
  public boolean confirmInfo(BookingAppointmentDto bookingAppointmentDto) {
    boolean isUpdateSuccess = false;
    if (bookingAppointmentDto == null) {
      return false;
    }
    if (bookingAppointmentDto.getId() == null) {
      Long id = patientService.createNew(bookingAppointmentDto);
      if (ObjectUtils.isNotEmpty(id)) {
        bookingAppointmentDto.setPatientId(id);
        Long appointmentId = appointmentService.createNew(bookingAppointmentDto);
        isUpdateSuccess = ObjectUtils.isNotEmpty(appointmentId);
      }
    } else {
      bookingAppointmentDto = com.clinic.util.ObjectUtils.merge(
          findById(bookingAppointmentDto.getId()), bookingAppointmentDto);
      Long patientId = bookingAppointmentDto.getPatientId();
      if (patientId == null) {
        patientId = patientService.createNew(bookingAppointmentDto);
      } else {
        isUpdateSuccess = patientService.update(bookingAppointmentDto);
      }
      bookingAppointmentDto.setPatient(patientService.findById(patientId));
      if (isUpdateSuccess) {
        isUpdateSuccess = appointmentService.update(bookingAppointmentDto);
      }
    }
    return isUpdateSuccess;
  }

  @Override
  public boolean confirmDoctor(BookingAppointmentDto bookingAppointmentDto) {
    return appointmentService.update(bookingAppointmentDto);
  }

  @Override
  public boolean returnResult(Long appointmentId, MedicalHistory medicalHistory) {
    Appointment appointment = appointmentService.findById(appointmentId);
    Long medicalHistoryId = medicalHistory.getId();
    if (medicalHistoryId == null) {
      medicalHistoryId = medicalHistoryService.save(medicalHistory);
      appointment.setMedicalRecordId(medicalHistoryId);
    } else {
      medicalHistory.setId(appointment.getMedicalRecordId());
      medicalHistoryService.update(medicalHistory);
    }
    appointment.setStatus(AppointmentStatus.RETURNRESULT);
    return appointmentService.update(appointment);

  }

  @Override
  public boolean complete(BookingAppointmentDto bookingAppointmentDto) {
    return appointmentService.update(bookingAppointmentDto);
  }

}
