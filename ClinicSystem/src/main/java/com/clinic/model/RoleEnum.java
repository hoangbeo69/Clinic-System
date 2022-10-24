/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.model;

/**
 * @author nguye
 */
public enum RoleEnum {
  ADMIN,
  MANAGER,
  USER,
  ANONYMOUS;

  RoleEnum() {
  }

  public static RoleEnum get(String roleName) {
    for (RoleEnum role : RoleEnum.values()) {
      if (role.name().equals(roleName)) {
        return role;
      }
    }
    return null;
  }

}
