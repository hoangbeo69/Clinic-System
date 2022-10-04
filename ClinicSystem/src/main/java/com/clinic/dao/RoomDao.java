/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.entity.Room;
import java.util.List;

/**
 * @author nguye
 */
public interface RoomDao extends GenericDao {

  Long save(Room room);

  Long update(Room room);

  Room findById(Long id);

  boolean delete(Long id);

  List<Room> findAll();
}
