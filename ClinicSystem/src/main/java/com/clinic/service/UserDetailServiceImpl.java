/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.service;

import com.clinic.dao.AccountDao;
import com.clinic.dao.AccountDaoImpl;
import com.clinic.model.UserDetail;
import org.apache.commons.lang3.StringUtils;

/**
 * @author nguye
 */
public class UserDetailServiceImpl implements UserDetailService {

  AccountDao accountDao;

  public UserDetailServiceImpl() {
    accountDao = new AccountDaoImpl();
  }

  @Override
  public UserDetail login(String username, String password) {
    if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password)) {
      return null;
    }
    return accountDao.findByUserDetailNameAndPassword(username, password);
  }

}
