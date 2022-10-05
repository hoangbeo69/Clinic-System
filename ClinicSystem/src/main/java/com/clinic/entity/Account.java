/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clinic.entity;

import com.clinic.model.AccountStatus;
import java.util.Date;

/**
 * @author ADMIN
 */
public class Account {

  private Long id;
  private String username;
  private String password;
  private String fullName;
  private String phoneNumber;
  private String email;
  private String sex;
  private Date dob;
  private AccountStatus status;
  private Integer statusCode;


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

  public AccountStatus getStatus() {
    return status;
  }

  public String getSex() {
    return sex;
  }

  public void setSex(String sex) {
    this.sex = sex;
  }

  public void setStatus(AccountStatus status) {
    this.status = status;
    this.statusCode = status.getStatusCode();
  }

  public Integer getStatusCode() {
    return statusCode;
  }

  public void setStatusCode(Integer statusCode) {
    this.statusCode = statusCode;
  }

  public Account() {
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public String getPhoneNumber() {
    return phoneNumber;
  }

  public void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public Date getDob() {
    return dob;
  }

  public void setDob(Date dob) {
    this.dob = dob;
  }

}
