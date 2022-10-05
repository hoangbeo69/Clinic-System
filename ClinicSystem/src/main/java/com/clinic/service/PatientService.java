/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.service;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.Patient;
import java.util.List;
import java.util.Map;

/**
 * @author nguye
 */
public interface PatientService {

  Long createNew(BookingAppointmentDto bookingAppointmentDto);

  List<Patient> getByListId(List<Long> listPatientId);

  Map<Long, Patient> getMapPatientByListId(List<Long> listPatientId);

  List<Patient> findAll();


  Patient findById(Long patientId);
}
