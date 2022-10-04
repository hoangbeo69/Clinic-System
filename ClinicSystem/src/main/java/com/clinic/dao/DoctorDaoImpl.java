/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.entity.Account;
import com.clinic.entity.Doctor;
import com.clinic.mapper.DoctorMapper;
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
  public Doctor getDoctorById(long id) {
    Account account = accountDao.findById(id);
    if (ObjectUtils.isEmpty(account)) {
      return null;
    }
    Doctor doctor = new Doctor();
    doctor.setAccountInfo(account);
    doctor.setDoctorInfor(getDoctorOnlyById(id));
    return doctor;

  }

  private Doctor getDoctorOnlyById(long id) {
    String sql = "SELECT * FROM Doctor WHERE Id = ?";
    List<Doctor> doctors = query(sql, new DoctorMapper(), id);
    return CollectionsUtil.isEmpty(doctors) ? null : doctors.get(0);
  }

}
