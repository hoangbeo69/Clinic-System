/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clinic.entity;

/**
 *
 * @author Admin
 */
public class Manager {

    private int AccountID;
    private String Name;
    private String Phone;
    private String Address;
    private String Email;
    private String DOB;

    public Manager() {
    }

    public Manager(int AccountID, String Name, String Phone, String Address, String Email, String DOB) {
        this.AccountID = AccountID;
        this.Name = Name;
        this.Phone = Phone;
        this.Address = Address;
        this.Email = Email;
        this.DOB = DOB;
    }
    
    

    public int getAccountID() {
        return AccountID;
    }

    public void setAccountID(int AccountID) {
        this.AccountID = AccountID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    @Override
    public String toString() {
        return "Manager{" + "AccountID=" + AccountID + ", Name=" + Name + ", Phone=" + Phone + ", Address=" + Address + ", Email=" + Email + ", DOB=" + DOB + '}';
    }
    
    
}
