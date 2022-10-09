/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clinic.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * @author Admin
 */
@Data
@Getter
@Setter
public class Manager {

  private int AccountID;
  private String Name;
  private String Phone;
  private String Address;
  private String Email;
  private String DOB;

  public Manager() {
  }

  public Manager(int AccountID, String Name, String Phone, String Address, String Email,
      String DOB) {
    this.AccountID = AccountID;
    this.Name = Name;
    this.Phone = Phone;
    this.Address = Address;
    this.Email = Email;
    this.DOB = DOB;
  }

}
