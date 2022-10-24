package com.clinic.service;

import com.clinic.dao.MedicalHistoryDao;
import com.clinic.dao.MedicalHistoryDaoImpl;
import com.clinic.entity.MedicalHistory;
import java.util.List;

public class MedicalHistoryServiceImpl implements MedicalHistoryService {

  private MedicalHistoryDao medicalHistoryDao;

  public MedicalHistoryServiceImpl() {
    medicalHistoryDao = new MedicalHistoryDaoImpl();
  }

  @Override
  public Long save(MedicalHistory medicalHistory) {
    return medicalHistoryDao.save(medicalHistory);
  }

  @Override
  public boolean update(MedicalHistory medicalHistory) {
    return medicalHistoryDao.update(medicalHistory) != null;
  }

  @Override
  public MedicalHistory findById(Long medicalRecordId) {
    return medicalHistoryDao.findById(medicalRecordId);
  }

  public List<MedicalHistory> findAll(){
    return medicalHistoryDao.findAll();
  }
}
