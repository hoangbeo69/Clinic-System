/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.model;

import com.clinic.entity.Account;
import com.clinic.entity.Role;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * @author nguye
 */
@Data
@Getter
@Setter
public class UserDetail {

  private Long          id;
  private String        username;
  private String        password;
  private String        fullName;
  private String        phoneNumber;
  private String        email;
  private Date          dob;
  private AccountStatus status;
  private Integer       statusCode;
  private List<Role>    roles;

  public UserDetail() {
  }

  public void setUserDetailInfo(Account account) {
    this.id = account.getId();
    this.username = account.getUsername();
    this.fullName = account.getFullName();
    this.phoneNumber = account.getPhoneNumber();
    this.email = account.getEmail();
    this.dob = account.getDob();
    this.status = account.getStatus();
    this.statusCode = this.status.getStatusCode();
  }

  public void addRoles(Role role) {
    if (null == roles) {
      roles = new ArrayList<>();
    }
    roles.add(role);
  }

  public void addRoles(List<Role> roles) {
    if (null == roles) {
      roles = new ArrayList<>();
    }
    roles.addAll(roles);
  }

}
