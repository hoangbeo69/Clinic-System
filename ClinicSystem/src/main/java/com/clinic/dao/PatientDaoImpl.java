/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.entity.Account;
import com.clinic.entity.Patient;
import com.clinic.mapper.PatientMapper;
import com.clinic.util.CollectionsUtil;
import com.clinic.util.StringUtil;
import java.util.List;
import org.apache.commons.lang3.ObjectUtils;

/**
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
  public Patient getPatientById(Long id) {
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

  @Override
  public Long save(Patient patient) {
    StringBuilder sql = new StringBuilder("INSERT INTO Patient ");
    sql.append(
        "(Id,InsuranceCode,IdentityCard,Address,GuardianFullname,GuardianPhoneNumber) Values");
    sql.append("(?,?,?,?,?,?)");
    insert(sql.toString(), patient.getId(), patient.getInsuranceCode(), patient.getIdentityCard(),
        patient.getAddress(), patient.getGuardianFullname(), patient.getGuardianPhoneNumber());
    return patient.getId();
  }

  @Override
  public Long update(Patient patient) {
    StringBuilder sql = new StringBuilder("UPDATE Patient SET ");
    sql.append(
        "(InsuranceCode = ? ,IdentityCard = ? ,Address = ? ,GuardianFullname = ? ,GuardianPhoneNumber = ? ) WHERE Id = ?");
    boolean result = update(sql.toString(), patient.getInsuranceCode(), patient.getIdentityCard(),
        patient.getAddress(), patient.getGuardianFullname(), patient.getGuardianPhoneNumber(),
        patient.getId());
    return result ? patient.getId() : null;
  }

  @Override
  public List<Patient> getByListId(List<Long> listPatientId) {
    StringBuilder sql = new StringBuilder(
        "SELECT * FROM Patient P\n" + "INNER JOIN Account A on A.Id = P.Id\n" + "WHERE  A.Id ");
    sql.append(" IN (" + StringUtil.arrayToDelimitedString(listPatientId, ",") + ")");
    List<Patient> patients = query(sql.toString(), new PatientMapper());
    return patients;
  }

  @Override
  public List<Patient> findAll() {
    StringBuilder sql = new StringBuilder(
        "SELECT * FROM Patient P\n" + "INNER JOIN Account A on A.Id = P.Id");
    List<Patient> patients = query(sql.toString(), new PatientMapper());
    return patients;
  }

}
