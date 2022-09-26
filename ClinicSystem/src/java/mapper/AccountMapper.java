/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mapper;

import entity.Account;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.AccountStatus;

/**
 *
 * @author nguye
 */
public class AccountMapper implements RowMapper<Account> {

    @Override
    public Account mapRow(ResultSet rs) {
        //TODO need to implement later
        Account user = new Account();
        try {
            user.setId(rs.getLong("id"));
            user.setUsername(rs.getString("Username"));
            user.setFullName(rs.getString("Fullname"));
            user.setPhoneNumber(rs.getString("Phonenumber"));
            user.setEmail(rs.getString("Email"));
            user.setDob(rs.getDate("Dob"));
            user.setStatus(AccountStatus.get(rs.getInt("Status")));

            return user;
        } catch (SQLException throwables) {
            return null;
        }
    }
}
