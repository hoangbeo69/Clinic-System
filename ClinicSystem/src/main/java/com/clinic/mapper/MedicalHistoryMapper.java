package com.clinic.mapper;

import com.clinic.entity.MedicalHistory;
import com.clinic.entity.Patient;
import com.clinic.model.MedicalReport;
import com.clinic.service.PatientServiceImpl;
import com.clinic.util.GsonUtil;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MedicalHistoryMapper implements RowMapper<MedicalHistory> {

  @Override
  public MedicalHistory mapRow(ResultSet rs) {
    MedicalHistory medicalHistory = new MedicalHistory();
    PatientServiceImpl patientService = new PatientServiceImpl();
    try {
      medicalHistory.setId(rs.getLong("Id"));
      medicalHistory.setCreatedBy(rs.getString("CreatedBy"));
      medicalHistory.setCreatedDate(rs.getTimestamp("CreateDate"));
      medicalHistory.setUpdateBy(rs.getString("EditedBy"));
      medicalHistory.setUpdatedDate(rs.getTimestamp("EditedDate"));
      medicalHistory.setMedicalJson(rs.getString("MedicalJson"));
      medicalHistory.setPatientId(rs.getLong("PatientId"));
      MedicalReport medicalReport = GsonUtil.getGson()
          .fromJson(medicalHistory.getMedicalJson(), MedicalReport.class);
      medicalHistory.setMedicalReport(medicalReport);
      return medicalHistory;
    } catch (SQLException throwables) {
      throwables.printStackTrace();
      return null;
    }
  }
}