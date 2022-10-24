/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.service;

import com.clinic.dao.AccountDao;
import com.clinic.dao.AccountDaoImpl;
import com.clinic.entity.Account;
import com.clinic.model.UserDetail;
import java.util.List;

/**
 * @author nguye
 */
public class AccountServiceImpl implements AccountService {

  AccountDao accountDao;

  public AccountServiceImpl() {
    this.accountDao = new AccountDaoImpl();
  }

  @Override
  public List<Account> getAllAccount() {
    return accountDao.findAll();
  }

  @Override
  public Account getAccountById(Long id) {
    if (null == id) {
      return null;
    }
    return accountDao.findById(id);
  }

  @Override
  public Account updateAccount(Account account) {
    if (account == null || account.getId() == null) {
      return null;
    }
    Long accountIdUpdated = null;
    if (null != accountDao.findById(account.getId())) {
      accountIdUpdated = accountDao.update(account);
    }
    return account.getId().equals(accountIdUpdated) ? account : null;
  }

  @Override
  public Account saveAccount(Account user) {
    user.setId(null);
    Long newUserId = accountDao.save(user);
    user.setId(newUserId);
    return user;
  }

  @Override
  public boolean deleteAccountById(Long id) {
    if (null == id) {
      return false;
    }
    return accountDao.delete(id);
  }

  @Override
  public UserDetail findByUserDetailNameAndPassword(String username, String password) {
    return accountDao.findByUserDetailNameAndPassword(username,password);
  }
}
