/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mapper;

import entity.Doctor;
import entity.Patient;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nguye
 */
public class DoctorMapper implements RowMapper<Doctor> {

    @Override
    public Doctor mapRow(ResultSet rs) {
        Doctor doctor = new Doctor();
        try {
            doctor.setSpecialization(rs.getString("Specialization"));
            return doctor;
        } catch (SQLException throwables) {
            return null;
        }
    }

}
