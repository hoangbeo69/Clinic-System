/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;


import com.clinic.entity.Role;
import com.clinic.mapper.RoleMapper;
import java.util.List;

/**
 * @author nguye
 */
public class RoleDaoImpl extends AbstractDAO implements RoleDao {

  @Override
  public List<Role> findAll() {
    String sql = "SELECT * FROM Role";
    List<Role> roles = query(sql, new RoleMapper());
    return roles;
  }

  @Override
  public List<Role> findRoleByAccountId(Long accountId) {
    String sql = "SELECT * FROM User_Role UR\n" + "INNER JOIN ROLE R ON UR.RoleId = R.Id\n" +
                 "WHERE UR.UserId = ?";
    List<Role> roles = query(sql, new RoleMapper(), accountId);
    return roles;
  }

}
