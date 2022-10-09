/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

/**
 * @author nguye
 */
@Data
@Getter
@Setter
public class Role {

  private Long id;
  private String name;
  private String description;

  public Role(Long id, String name, String description) {
    this.id = id;
    this.name = name;
    this.description = description;
  }

  public Role() {
  }

}
