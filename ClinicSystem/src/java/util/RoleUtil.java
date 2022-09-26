/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import DAO.RoleDao;
import DAO.RoleDaoImpl;
import entity.Role;
import java.util.List;
import java.util.Map;
import model.RoleEnum;
import org.apache.commons.lang3.ObjectUtils;

/**
 *
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
