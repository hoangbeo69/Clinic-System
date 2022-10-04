/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.util;

import com.clinic.dao.RoleDao;
import com.clinic.dao.RoleDaoImpl;
import com.clinic.entity.Role;
import com.clinic.model.RoleEnum;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.ObjectUtils;

/**
 * @author nguye
 */
public class RoleUtil {

  public static Map<RoleEnum, Role> mapRole;

  public static Role getRole(RoleEnum roleEnum) {
    if (mapRole == null) {
      RoleDao roleDao = new RoleDaoImpl();
      List<Role> roles = roleDao.findAll();
      for (Role role : roles) {
        RoleEnum roleE = RoleEnum.get(role.getName());
        if (ObjectUtils.isNotEmpty(roleE)) {
          mapRole.put(roleE, role);
        }
      }
    }
    return mapRole.get(roleEnum);
  }
}
