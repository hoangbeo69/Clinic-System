/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clinic.entity;

import com.clinic.model.AccountStatus;
import java.util.Date;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @author ADMIN
 */
@Data
@Getter
@Setter
@ToString
public class Account {

  private Long          id;
  private String        username;
  private String        password;
  private String        fullName;
  private String        phoneNumber;
  private String        email;
  private String        sex;
  private Date          dob;
  private AccountStatus status;
  private Integer       statusCode;


  public Account(Long id, String username, String password, String fullName, String phoneNumber,
      String email, Date dob) {
    this.id = id;
    this.username = username;
    this.password = password;
    this.fullName = fullName;
    this.phoneNumber = phoneNumber;
    this.email = email;
    this.dob = dob;
    this.sex = sex;
  }

  public Account() {
  }

  public void setAccountInfo(Account account) {
    this.id = account.getId();
    this.username = account.getUsername();
    this.fullName = account.getFullName();
    this.phoneNumber = account.getPhoneNumber();
    this.email = account.getEmail();
    this.dob = account.getDob();
    this.status = account.getStatus();
    this.statusCode = this.status.getStatusCode();
    this.sex = account.getSex();
  }

  public void setStatus(AccountStatus status) {
    this.status = status;
    this.statusCode = status.getStatusCode();
  }
}
