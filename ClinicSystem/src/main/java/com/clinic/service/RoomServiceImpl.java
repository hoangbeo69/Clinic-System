package com.clinic.service;

import com.clinic.dao.RoomDao;
import com.clinic.dao.RoomDaoImpl;
import com.clinic.entity.Doctor;
import com.clinic.entity.Room;
import java.util.List;

public class RoomServiceImpl implements RoomService {

  private RoomDao roomDao;

  public RoomServiceImpl() {
    this.roomDao = new RoomDaoImpl();
  }

  @Override
  public List<Room> findAll() {
    return roomDao.findAll();
  }

  @Override
  public Room findById(Long id) {
    if (id == null) {
      return null;
    }
    return roomDao.findById(id);
  }

  @Override
  public boolean update(Room room) {
    Long id = roomDao.update(room);
    return id != null;
  }

  @Override
  public Long createNew(Room room) {
    return  roomDao.save(room);
  }
}
