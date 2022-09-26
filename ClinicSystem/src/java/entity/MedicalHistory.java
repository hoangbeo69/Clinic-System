/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Timestamp;
import model.MedicalReport;
import util.GsonUtil;

/**
 *
 * @author nguye
 */
public class MedicalHistory {

    private Long id;
    private Long patientId;
    private String createdBy;
    private String updateBy;
    private Timestamp createdDate;
    private Timestamp updatedDate;
    private String medicalJson;
    private MedicalReport medicalReport;

    public MedicalHistory(Long id, Long patientId, String createdBy, String updateBy, Timestamp createdDate, Timestamp updatedDate, String medicalJson, MedicalReport medicalReport) {
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

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getPatientId() {
        return patientId;
    }

    public void setPatientId(Long patientId) {
        this.patientId = patientId;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public Timestamp getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }

    public Timestamp getUpdatedDate() {
        return updatedDate;
    }

    public void setUpdatedDate(Timestamp updatedDate) {
        this.updatedDate = updatedDate;
    }

    public String getMedicalJson() {
        return medicalJson;
    }

    public void setMedicalJson(String medicalJson) {
        this.medicalJson = medicalJson;
    }

    public MedicalReport getMedicalReport() {
        return medicalReport;
    }

    public void setMedicalReport(MedicalReport medicalReport) {
        this.medicalReport = medicalReport;
        this.medicalJson = GsonUtil.getGson().toJson(medicalReport);
    }

}
