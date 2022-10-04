/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.entity.Account;
import com.clinic.model.UserDetail;
import java.util.List;
/**
 * @author nguye
 */
public interface AccountDao extends GenericDao {

  Account findById(Long id);

  Long save(Account user);

  Long update(Account user);

  boolean delete(Long id);

  List<Account> findAll();

  Account findByEmailOrUsername(String usernameEmail);

  Account findByUserNameAndPassword(String username, String password);

  UserDetail findUserDetailById(Long id);

  UserDetail findByUserDetailNameAndPassword(String username, String password);

  UserDetail save(UserDetail userDetail);
}
