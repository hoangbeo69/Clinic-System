/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mapper;

import entity.Role;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.AccountStatus;
import model.UserDetail;

/**
 *
 * @author nguye
 */
public class UserDetailMapper implements RowMapper<UserDetail> {

    @Override
    public UserDetail mapRow(ResultSet rs) {
        UserDetail userDetail = new UserDetail();
        try {
            userDetail.setId(rs.getLong("ACC.Id"));
            userDetail.setUsername(rs.getString("Username"));
            userDetail.setFullName(rs.getString("Fullname"));
            userDetail.setPhoneNumber(rs.getString("Phonenumber"));
            userDetail.setEmail(rs.getString("Email"));
            userDetail.setDob(rs.getDate("Dob"));
            userDetail.setStatus(AccountStatus.get(rs.getInt("Status")));
            return userDetail;
        } catch (SQLException throwables) {
            return null;
        }
    }

}
