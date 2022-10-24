package com.clinic.dao;

import com.clinic.entity.MedicalHistory;
import java.util.List;

public interface MedicalHistoryDao extends GenericDao {

  MedicalHistory findById(Long id);

  Long save(MedicalHistory medicalHistory);

  Long update(MedicalHistory medicalHistory);

  boolean delete(Long id);

  List<MedicalHistory> findAll();
}
