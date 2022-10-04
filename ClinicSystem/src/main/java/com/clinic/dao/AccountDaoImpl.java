/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.entity.Account;
import com.clinic.entity.Role;
import com.clinic.mapper.AccountMapper;
import com.clinic.model.UserDetail;
import com.clinic.util.CollectionsUtil;
import java.util.List;
import org.apache.commons.lang3.ObjectUtils;

/**
 * @author nguye
 */
public class AccountDaoImpl extends AbstractDAO implements AccountDao {

  private RoleDao roleDao;

  public AccountDaoImpl() {
    roleDao = new RoleDaoImpl();
  }

  @Override
  public Account findById(Long id) {
    String sql = "SELECT * FROM Account WHERE ID = ? ";
    List<Account> users = query(sql, new AccountMapper(), id);
    return CollectionsUtil.isEmpty(users) ? null : users.get(0);
  }

  @Override
  public Long save(Account user) {
    StringBuilder sql = new StringBuilder("INSERT INTO Account ");
    sql.append("(USERNAME,PASSWORD,FULLNAME,PHONENUMBER,EMAIL,DOB,SEX) Values");
    sql.append("(?,?,?,?,?,?,?)");
    return insert(sql.toString(), user.getUsername(), user.getPassword(), user.getFullName(),
        user.getPhoneNumber(), user.getEmail(), user.getDob(), user.getSex());
  }

  @Override
  public Long update(Account user) {
    StringBuilder sql = new StringBuilder("UPDATE Account ");
    sql.append(
        "SET USERNAME = ?,PASSWORD = ?,FULLNAME = ?,PHONENUMBER = ? ,EMAIL = ? ,DOB = ?, SEX = ? WHERE ID = ?");
    boolean result = update(sql.toString(), user.getUsername(), user.getPassword(),
        user.getFullName(), user.getPhoneNumber(), user.getEmail(), user.getDob(), user.getSex(),
        user.getId());
    return result ? user.getId() : null;
  }

  @Override
  public boolean delete(Long id) {
    String sql = "DELETE Account WHERE ID = ?";
    return delete(sql, id);

  }

  @Override
  public List<Account> findAll() {
    String sql = "SELECT * FROM Account";
    return query(sql, new AccountMapper());
  }

  @Override
  public Account findByEmailOrUsername(String usernameEmail) {
    String sql = "SELECT * FROM Account WHERE Email = ? OR Username = ?";
    List<Account> users = query(sql, new AccountMapper(), usernameEmail, usernameEmail);
    return CollectionsUtil.isEmpty(users) ? null : users.get(0);
  }

  @Override
  public Account findByUserNameAndPassword(String username, String password) {
    String sql = "SELECT * FROM Account WHERE (Email = ? OR Username = ?) AND Password = ? ";
    List<Account> users = query(sql, new AccountMapper(), username, username, password);
    return CollectionsUtil.isEmpty(users) ? null : users.get(0);
  }

  @Override
  public UserDetail findUserDetailById(Long id) {
    Account account = findById(id);
    if (ObjectUtils.isEmpty(account)) {
      return null;
    }
    List<Role> roles = roleDao.findRoleByAccountId(id);
    UserDetail userDetail = new UserDetail();
    userDetail.addRoles(roles);
    userDetail.setUserDetailInfo(account);

    return userDetail;
  }

  @Override
  public UserDetail findByUserDetailNameAndPassword(String username, String password) {
    Account account = findByUserNameAndPassword(username, password);
    if (ObjectUtils.isEmpty(account)) {
      return null;
    }
    List<Role> roles = roleDao.findRoleByAccountId(account.getId());
    UserDetail userDetail = new UserDetail();
    userDetail.addRoles(roles);
    userDetail.setUserDetailInfo(account);

    return userDetail;
  }

  @Override
  public UserDetail save(UserDetail userDetail) {
    throw new UnsupportedOperationException(
        "Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
  }

}
