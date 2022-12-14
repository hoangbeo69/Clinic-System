/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.mapper;

import com.clinic.entity.Account;
import com.clinic.model.AccountStatus;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author nguye
 */
public class AccountMapper implements RowMapper<Account> {

  @Override
  public Account mapRow(ResultSet rs) {
    Account user = new Account();
    try {
      user.setId(rs.getLong("id"));
      user.setUsername(rs.getString("Username"));
      user.setFullName(rs.getString("Fullname"));
      user.setPhoneNumber(rs.getString("PhoneNumber"));
      user.setEmail(rs.getString("Email"));
      Date date = rs.getDate("Dob");
      if(date!=null){
        user.setDob(new java.util.Date(date.getTime()));
      }
      user.setStatus(AccountStatus.get(rs.getInt("Status")));
      user.setSex(rs.getString("Sex"));
      return user;
    } catch (SQLException throwables) {
      throwables.printStackTrace();
      return null;
    }
  }
}
