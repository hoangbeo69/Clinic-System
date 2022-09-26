/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mapper;

import entity.Account;
import entity.Patient;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nguye
 */
public class PatientMapper implements RowMapper<Patient> {

    @Override
    public Patient mapRow(ResultSet rs) {
        Patient patient = new Patient();
        try {
            patient.setInsuranceCode(rs.getString("InsuranceCode"));
            patient.setIdentityCard(rs.getString("IdentityCard"));
            return patient;
        } catch (SQLException throwables) {
            return null;
        }
    }

}
