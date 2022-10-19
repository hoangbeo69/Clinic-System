package com.clinic.service;

import com.clinic.dao.RoomDao;
import com.clinic.dao.RoomDaoImpl;
import com.clinic.entity.Room;
import java.util.List;

public class RoomServiceImpl implements RoomService{

  private RoomDao roomDao;

  public RoomServiceImpl() {
    this.roomDao = new RoomDaoImpl();
  }

  @Override
  public List<Room> findAll() {
    return roomDao.findAll();
  }
}
