/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entity.Doctor;

/**
 *
 * @author nguye
 */
public interface DoctorDao extends GenericDao{

    Doctor getDoctorById(long id);
}
