/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.entity.Doctor;
import java.util.List;

/**
 * @author nguye
 */
public interface DoctorDao extends GenericDao {

  Doctor findById(Long id);

  Long save(Doctor doctor);

  List<Doctor> findAll();

  Long update(Doctor doctor);
}
