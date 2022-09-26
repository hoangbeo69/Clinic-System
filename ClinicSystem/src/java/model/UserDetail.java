/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import entity.Account;
import entity.Role;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author nguye
 */
public class UserDetail {

    private Long id;
    private String username;
    private String password;
    private String fullName;
    private String phoneNumber;
    private String email;
    private Date dob;
    private AccountStatus status;
    private Integer statusCode;
    private List<Role> roles;

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

    public AccountStatus getStatus() {
        return status;
    }

    public void setStatus(AccountStatus status) {
        this.status = status;
    }

    public Integer getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
    }

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

}
