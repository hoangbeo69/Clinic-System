/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.entity.Doctor;
/**
 *
 * @author nguye
 */
public interface DoctorDao extends GenericDao{

    Doctor getDoctorById(long id);
}
