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
public class Room {

  private Long   id;
  private String roomName;
  private String description;

  public Room(Long id, String roomName, String description) {
    this.id = id;
    this.roomName = roomName;
    this.description = description;
  }

  public Room() {
  }

}
