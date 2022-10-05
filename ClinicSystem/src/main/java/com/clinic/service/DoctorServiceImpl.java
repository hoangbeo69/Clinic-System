package com.clinic.service;

import com.clinic.dao.AccountDao;
import com.clinic.dao.AccountDaoImpl;
import com.clinic.dao.DoctorDao;
import com.clinic.dao.DoctorDaoImpl;
import com.clinic.entity.Doctor;
import java.util.List;
import org.apache.commons.lang3.ObjectUtils;

public class DoctorServiceImpl implements DoctorService {

  private DoctorDao doctorDao;
  private AccountDao accountDao;

  public DoctorServiceImpl() {
    doctorDao = new DoctorDaoImpl();
    accountDao = new AccountDaoImpl();
  }

  @Override
  public Long createNew(Doctor doctor) {
    if (ObjectUtils.isEmpty(doctor)) {
      return null;
    }
    Long id = accountDao.save(doctor);
    if (ObjectUtils.isNotEmpty(id)) {
      doctor.setId(id);
      id = doctorDao.save(doctor);
    }

    return id;
  }

  @Override
  public Doctor findById(Long id) {
    if (ObjectUtils.isEmpty(id)) {
      return null;
    }

    return doctorDao.findById(id);
  }

  @Override
  public List<Doctor> findAll() {
    return doctorDao.findAll();
  }

  @Override
  public boolean udpate(Doctor doctor) {
    if (ObjectUtils.isEmpty(doctor)) {
      return false;
    }
    Long id = accountDao.update(doctor);
    if (ObjectUtils.isNotEmpty(id)) {
      doctor.setId(id);
      id = doctorDao.update(doctor);
    }
    return ObjectUtils.isNotEmpty(id) ? true: false;
  }
}
