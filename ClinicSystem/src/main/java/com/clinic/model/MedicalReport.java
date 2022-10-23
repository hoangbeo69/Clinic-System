/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.model;

import java.io.Serializable;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * @author nguye
 */
@Data
@Getter
@Setter
public class MedicalReport implements Serializable {

  private String bodyTemperature;
  private String height;
  private String bloodPressure;
  private String weight;
  private String earlyDiagnosis;
  private String finalDiagnosis;
  private String diagnosisDisease;
  private String conclusion;


}
