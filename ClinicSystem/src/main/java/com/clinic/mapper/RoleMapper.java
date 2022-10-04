/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.mapper;

import com.clinic.entity.Role;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author nguye
 */
public class RoleMapper implements RowMapper<Role> {

  @Override
  public Role mapRow(ResultSet rs) {
    Role role = new Role();
    try {
      role.setId(rs.getLong("Id"));
      role.setName(rs.getString("Name"));
      role.setDescription(rs.getString("Description"));
      return role;
    } catch (SQLException throwables) {
      throwables.printStackTrace();
      return null;
    }
  }

}
