/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.entity.Patient;
import java.util.List;

/**
 * @author nguye
 */
public interface PatientDao extends GenericDao {

  Patient getPatientByEmail(String email);

  Patient getPatientById(long id);

  Long save(Patient patient);

  Long update(Patient patient);

  List<Patient> getByListId(List<Long> listPatientId);
}
