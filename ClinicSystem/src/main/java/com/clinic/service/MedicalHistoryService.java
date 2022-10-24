package com.clinic.service;

import com.clinic.entity.MedicalHistory;

public interface MedicalHistoryService {

  Long save(MedicalHistory medicalHistory);

  boolean update(MedicalHistory medicalHistory);

  MedicalHistory findById(Long medicalRecordId);
}
