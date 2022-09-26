/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import entity.Account;
import entity.Doctor;
import entity.Manager;
import entity.Patient;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Long
 */
public class UserDAO extends DBContext {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //
    public void register(String user, String pass) {
        String query = "insert into Account\n"
                + "values(?,?,1,0,0)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    
    public Manager getManagerInfo(int id) {
        String query = "select * from Manager_Information where AccountID = ?";
        Manager m = new Manager();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                m = new Manager(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)
                );
            }
        } catch (Exception e) {
        }
        return m;
    }

//    public Account checkUser(String usern, String pass, boolean isUser) {
//        User user = null;
//        Connection conn = null;
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        try {
//            String query = "select * from Account where UserName = ? and PassWord = ? and IsUser = ?";
//            conn = getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(2, usern);
//            ps.setString(3, pass);
//            ps.setBoolean(4, isUser);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getBoolean(4),rs.getBoolean(5),rs.getBoolean(6)) {};
//            }
//        } catch (Exception ex) {
//            try {
//                throw ex;
//            } catch (Exception ex1) {
//                Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex1);
//            }
//        } finally {
//            try {
//                closeConnection(con, st, rs);
//            } catch (SQLException ex) {
//                Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
//            }
//        }
//        return null;
//    }

    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
        Manager p = dao.getManagerInfo(2);
        System.out.println(p);
    }

    public void changePassword(String password, String username) {
        String query = "update Account set PassWord = ? where UserName = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, username);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void resetPassword(String password, String email) {
        String query = "UPDATE dbo.PatientInformation SET PASSWORD = ? WHERE Email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, email);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
