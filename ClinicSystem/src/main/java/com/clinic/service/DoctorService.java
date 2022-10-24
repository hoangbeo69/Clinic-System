package com.clinic.service;

import com.clinic.entity.Doctor;
import java.util.List;

public interface DoctorService {

  Long createNew(Doctor doctor);

  Doctor findById(Long id);

  List<Doctor> findAll();

  boolean udpate(Doctor doctor);
}
