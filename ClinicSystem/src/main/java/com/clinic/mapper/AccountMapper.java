/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.mapper;

import com.clinic.entity.Account;
import com.clinic.model.AccountStatus;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author nguye
 */
public class AccountMapper implements RowMapper<Account> {

  @Override
  public Account mapRow(ResultSet rs) {
    //TODO need to implement later
    Account user = new Account();
    try {
      user.setId(rs.getLong("id"));
      user.setUsername(rs.getString("Username"));
      user.setFullName(rs.getString("Fullname"));
      user.setPhoneNumber(rs.getString("Phonenumber"));
      user.setEmail(rs.getString("Email"));
      user.setDob(new java.util.Date(rs.getDate("Dob").getTime()));
      user.setStatus(AccountStatus.get(rs.getInt("Status")));
      user.setSex(rs.getString("Sex"));
      return user;
    } catch (SQLException throwables) {
      throwables.printStackTrace();
      return null;
    }
  }
}
