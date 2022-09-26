/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entity.Role;
import java.util.List;

/**
 *
 * @author nguye
 */
public interface RoleDao extends GenericDao{

    List<Role> findAll();
    
    List<Role> findRoleByAccountId(Long accountId);
}
