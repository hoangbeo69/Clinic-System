/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.model;

import com.clinic.entity.Account;
import com.clinic.entity.Role;
import com.clinic.util.StringUtil;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @author nguye
 */
@Data
@Getter
@Setter
@ToString
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
  private String        strRole;

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
    List<String> rolesString = roles.stream().map(Role::getName).collect(Collectors.toList());
    this.strRole = StringUtil.arrayStrToDelimitedString(rolesString, ",");
  }

  public void addRoles(List<Role> roles) {
    if (null == roles) {
      roles = new ArrayList<>();
    }
    roles.addAll(roles);
    this.strRole = roles.get(0).getName();
  }

}
