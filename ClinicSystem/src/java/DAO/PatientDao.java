/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entity.Patient;

/**
 *
 * @author nguye
 */
public interface PatientDao extends GenericDao {

    Patient getPatientByEmail(String email);

    Patient getPatientById(long id);
}
