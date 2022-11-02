package com.clinic.service;

import com.clinic.entity.MedicalHistory;

import java.util.List;

public interface MedicalHistoryService {

  Long save(MedicalHistory medicalHistory);

  boolean update(MedicalHistory medicalHistory);

  MedicalHistory findById(Long medicalRecordId);

  List<MedicalHistory> getAll();
}
