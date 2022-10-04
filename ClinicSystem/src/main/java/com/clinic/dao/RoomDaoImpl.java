/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;


import com.clinic.entity.Room;
import com.clinic.mapper.RoomMapper;
import com.clinic.util.CollectionsUtil;
import java.util.List;

/**
 * @author nguye
 */
public class RoomDaoImpl extends AbstractDAO implements RoomDao {

  @Override
  public Long save(Room room) {
    StringBuilder sql = new StringBuilder("INSERT INTO Room ");
    sql.append("(RoomName,Description) Values ");
    sql.append("(?,?)");
    return insert(sql.toString(), room.getRoomName(), room.getDescription());
  }

  @Override
  public Long update(Room room) {
    StringBuilder sql = new StringBuilder("UPDATE Room ");
    sql.append("RoomName = ? ,Description = ?  WHERE id = ? ");
    return insert(sql.toString(), room.getRoomName(), room.getDescription(), room.getId());
  }

  @Override
  public Room findById(Long id) {
    String sql = "SELECT * FROM Room WHERE Id = ? ";
    List<Room> rooms = query(sql, new RoomMapper(), id);
    return CollectionsUtil.isEmpty(rooms) ? null : rooms.get(0);
  }

  @Override
  public boolean delete(Long id) {
    String sql = "DELETE Room WHERE Id = ?";
    return delete(sql, id);
  }

  @Override
  public List<Room> findAll() {
    String sql = "SELECT * FROM Room";
    return query(sql, new RoomMapper());
  }

}
