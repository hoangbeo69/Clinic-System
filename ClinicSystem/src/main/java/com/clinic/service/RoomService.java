package com.clinic.service;

import com.clinic.entity.Room;
import java.util.List;

public interface RoomService {

  List<Room> findAll();

  Room findById(Long id);

  boolean update(Room room);

  Long createNew(Room room);
}
