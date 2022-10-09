package com.clinic.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DBUtils {

  private static DBUtils instance;
  private Connection connection;

  /**
   *
   */
  private DBUtils() {
    ResourceBundle myBundle = ResourceBundle.getBundle("db");

    try {
      String driver = myBundle.getString("driverName");
      String url = myBundle.getString("url");
      String userName = myBundle.getString("user");
      String password = myBundle.getString("password");
      Class.forName(driver);
      connection = DriverManager.getConnection(url, userName, password);

    } catch (SQLException e) {
      e.printStackTrace();
    } catch (ClassNotFoundException e) {
      throw new RuntimeException(e);
    }
  }

  /**
   *
   */
  public Connection getConnection() {
    return connection;
  }

  /**
   * Create new instance which connects with the database.
   * @return DBUtils
   * @throws SQLException if connection false.
   */
  public static DBUtils getInstance() throws SQLException {
    if (instance == null || instance.getConnection().isClosed()) {
      instance = new DBUtils();
    }
    return instance;
  }
}
