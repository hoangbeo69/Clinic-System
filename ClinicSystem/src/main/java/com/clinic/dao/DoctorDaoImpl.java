/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.entity.Account;
import com.clinic.entity.Doctor;
import com.clinic.entity.Patient;
import com.clinic.mapper.DoctorMapper;
import com.clinic.mapper.PatientMapper;
import com.clinic.util.CollectionsUtil;
import java.util.List;
import org.apache.commons.lang3.ObjectUtils;

/**
 * @author nguye
 */
public class DoctorDaoImpl extends AbstractDAO implements DoctorDao {

  private AccountDao accountDao;

  public DoctorDaoImpl() {
    this.accountDao = new AccountDaoImpl();
  }

  @Override
  public Doctor findById(Long id) {
    Account account = accountDao.findById(id);
    if (ObjectUtils.isEmpty(account)) {
      return null;
    }
    Doctor doctor = new Doctor();
    doctor.setAccountInfo(account);
    doctor.setDoctorInfor(getDoctorOnlyById(id));
    return doctor;

  }

  @Override
  public Long save(Doctor doctor) {
    StringBuilder sql = new StringBuilder("INSERT INTO Doctor ");
    sql.append(" (Id,Specialization) VALUES (?,?)");
    insert(sql.toString(), doctor.getId(), doctor.getSpecialization());
    return doctor.getId();
  }

  @Override
  public List<Doctor> findAll() {
    StringBuilder sql = new StringBuilder(
        "SELECT * FROM Doctor D\n" + "INNER JOIN Account A on A.Id = D.Id");
    return query(sql.toString(), new DoctorMapper());
  }

  @Override
  public Long update(Doctor doctor) {
    StringBuilder sql = new StringBuilder(
        "UPDATE Doctor SET Specialization = ? WHERE Id = ?");
    boolean result = update(sql.toString(),doctor.getSpecialization(),
        doctor.getId());
    return result ? doctor.getId():null;
  }

  private Doctor getDoctorOnlyById(Long id) {
    String sql = "SELECT * FROM Doctor D INNER JOIN Account A on A.Id = D.Id WHERE D.Id = ?";
    List<Doctor> doctors = query(sql, new DoctorMapper(), id);
    return CollectionsUtil.isEmpty(doctors) ? null : doctors.get(0);
  }

}
