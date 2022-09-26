/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entity.Account;
import entity.Patient;
import java.util.List;
import mapper.PatientMapper;
import org.apache.commons.lang3.ObjectUtils;
import util.CollectionsUtil;

/**
 *
 * @author nguye
 */
public class PatientDaoImpl extends AbstractDAO implements PatientDao {

    private AccountDao accountDao;

    public PatientDaoImpl() {
        this.accountDao = new AccountDaoImpl();
    }

    @Override
    public Patient getPatientByEmail(String email) {
        Account account = accountDao.findByEmailOrUsername(email);
        if (ObjectUtils.isEmpty(account)) {
            return null;
        }
        Patient patient = new Patient();
        patient.setAccountInfo(account);
        patient.setPatientInfo(getPatientById(patient.getId()));
        return patient;
    }

    @Override
    public Patient getPatientById(long id) {
        Account account = accountDao.findById(id);
        if (ObjectUtils.isEmpty(account)) {
            return null;
        }

        Patient patient = new Patient();
        patient.setAccountInfo(account);
        patient.setPatientInfo(getPatientOnlyById(id));

        return patient;
    }

    private Patient getPatientOnlyById(long id) {
        String sql = "SELECT * FROM Patient WHERE Id = ?";
        List<Patient> patients = query(sql, new PatientMapper(), id);
        return CollectionsUtil.isEmpty(patients) ? null : patients.get(0);
    }

}
