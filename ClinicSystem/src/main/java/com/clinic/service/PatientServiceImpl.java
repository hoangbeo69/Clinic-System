/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.service;

import com.clinic.dao.AccountDao;
import com.clinic.dao.AccountDaoImpl;
import com.clinic.dao.PatientDao;
import com.clinic.dao.PatientDaoImpl;
import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.Patient;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.apache.commons.lang3.ObjectUtils;

/**
 * @author nguye
 */
public class PatientServiceImpl implements PatientService {

  private PatientDao patientDao;
  private AccountDao accountDao;

  public PatientServiceImpl() {
    patientDao = new PatientDaoImpl();
    accountDao = new AccountDaoImpl();
  }

  @Override
  public Long createNew(BookingAppointmentDto bookingAppointmentDto) {
    if (ObjectUtils.isEmpty(bookingAppointmentDto)) {
      return null;
    }
    Patient patient = new Patient(bookingAppointmentDto);
    Long id = accountDao.save(patient);
    if (ObjectUtils.isNotEmpty(id)) {
      patient.setId(id);
      id = patientDao.save(patient);
    }
    return id;
  }

  @Override
  public List<Patient> getByListId(List<Long> listPatientId) {
    return patientDao.getByListId(listPatientId);
  }

  @Override
  public Map<Long, Patient> getMapPatientByListId(List<Long> listPatientId) {
    return getByListId(listPatientId).stream()
        .collect(Collectors.toMap(Patient::getId, Function.identity()));
  }

  @Override
  public List<Patient> findAll() {
    return patientDao.findAll();
  }

  @Override
  public Patient findById(Long patientId) {
    return patientDao.getPatientById(patientId);
  }

}
