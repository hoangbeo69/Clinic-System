/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.entity.Appointment;
import java.util.List;

/**
 * @author nguye
 */
public interface AppointmentDao extends GenericDao {

  Long save(Appointment appointment);

  Long update(Appointment appointment);

  Appointment findById(Long id);

  boolean delete(Long id);

  List<Appointment> findAll();
}
