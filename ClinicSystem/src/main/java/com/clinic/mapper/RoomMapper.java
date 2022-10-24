/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.mapper;

import com.clinic.entity.Room;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author nguye
 */
public class RoomMapper implements RowMapper<Room> {

  @Override
  public Room mapRow(ResultSet rs) {
    Room room = new Room();
    try {
      room.setId(rs.getLong("id"));
      room.setDescription(rs.getString("Description"));
      room.setRoomName(rs.getString("RoomName"));
      return room;
    } catch (SQLException throwables) {
      return null;
    }
  }

}
