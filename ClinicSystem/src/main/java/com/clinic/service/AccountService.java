/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.service;

import com.clinic.entity.Account;
import java.util.List;

/**
 * @author nguye
 */
public interface AccountService {

  List<Account> getAllAccount();

  Account getAccountById(Long id);

  Account updateAccount(Account user);

  Account saveAccount(Account user);

  boolean deleteAccountById(Long id);
}
