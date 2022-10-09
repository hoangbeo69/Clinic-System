/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.entity;

import com.clinic.model.MedicalReport;
import com.clinic.util.GsonUtil;
import java.sql.Timestamp;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * @author nguye
 */
@Data
@Getter
@Setter
public class MedicalHistory {

  private Long id;
  private Long patientId;
  private String createdBy;
  private String updateBy;
  private Timestamp createdDate;
  private Timestamp updatedDate;
  private String medicalJson;
  private MedicalReport medicalReport;

  public MedicalHistory(Long id, Long patientId, String createdBy, String updateBy,
      Timestamp createdDate, Timestamp updatedDate, String medicalJson,
      MedicalReport medicalReport) {
    this.id = id;
    this.patientId = patientId;
    this.createdBy = createdBy;
    this.updateBy = updateBy;
    this.createdDate = createdDate;
    this.updatedDate = updatedDate;
    this.medicalJson = medicalJson;
    this.medicalReport = medicalReport;
  }

  public MedicalHistory() {
  }

  public void setMedicalReport(MedicalReport medicalReport) {
    this.medicalReport = medicalReport;
    this.medicalJson = GsonUtil.getGson().toJson(medicalReport);
  }

}
