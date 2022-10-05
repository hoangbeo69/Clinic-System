package com.clinic.service;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.Doctor;
import com.clinic.entity.Patient;
import java.util.List;
import java.util.Map;

public interface DoctorService {

  Long createNew(Doctor doctor);

  Doctor findById(Long id);

  List<Doctor> findAll();

  boolean udpate(Doctor doctor);
}
