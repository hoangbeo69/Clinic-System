/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.mapper.RowMapper;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AbstractDAO<T> implements GenericDao<T> {

  Logger logger = Logger.getLogger(AbstractDAO.class.toString());
  private final String serverName = "localhost";
  private final String dbName = "ClinicSystem";
  private final String portNumber = "1433";
  private final String instance = "";
  private final String userID = "sa";
  private final String password = "123456";

  public Connection getConnection() {
    try {
      String url =
          "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";databaseName=" +
              dbName;
      if (instance == null || instance.trim().isEmpty()) {
        url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
      }
      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
      return DriverManager.getConnection(url, userID, password);
    } catch (SQLException throwables) {
      throwables.printStackTrace();
    } catch (ClassNotFoundException ex) {
      Logger.getLogger(AbstractDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
    return null;
  }

  @Override
  public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
    List<T> results = new ArrayList<>();
    Connection connection = null;
    ResultSet rs = null;
    PreparedStatement statement = null;
    try {
      connection = getConnection();
      statement = connection.prepareStatement(sql);
      setParameter(statement, parameters);
      rs = statement.executeQuery();
      while (rs.next()) {
        results.add(rowMapper.mapRow(rs));
      }
      return results;
    } catch (Exception e) {
      System.out.println(e);
      return null;
    } finally {
      try {
        if (connection != null) {
          connection.close();
        }
        if (statement != null) {
          statement.close();
        }
        if (rs != null) {
          rs.close();
        }
      } catch (SQLException throwables) {
        throwables.printStackTrace();
        return null;
      }
    }
  }

  @Override
  public boolean update(String sql, Object... parameters) {
    PreparedStatement statement = null;
    Connection connection = null;
    boolean result = true;
    try {
      connection = getConnection();
      connection.setAutoCommit(false);
      statement = connection.prepareStatement(sql);
      setParameter(statement, parameters);
      statement.executeUpdate();
      connection.commit();
    } catch (SQLException e) {
      result = false;
      System.out.println(e);
      if (connection != null) {
        try {
          connection.rollback();
        } catch (SQLException throwables) {
          System.out.println(e);
        }
      }
    } finally {
      try {
        if (connection != null) {
          connection.close();
        }
        if (statement != null) {
          statement.close();
        }
      } catch (SQLException throwables) {
        throwables.printStackTrace();
      }
    }
    return result;
  }

  @Override
  public Long insert(String sql, Object... parameters) {
    ResultSet resultSet = null;
    Long id = null;
    Connection connection = null;
    PreparedStatement statement = null;
    try {
      connection = getConnection();
      connection.setAutoCommit(false);
      statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
      setParameter(statement, parameters);
      statement.executeUpdate();
      resultSet = statement.getGeneratedKeys();
      if (resultSet.next()) {
        id = resultSet.getLong(1);
      }
      connection.commit();
      return id;
    } catch (SQLException e) {
      System.out.println(e);
      if (connection != null) {
        try {
          connection.rollback();
        } catch (SQLException throwables) {
          System.out.println(e);
        }
      }
      return null;
    } finally {
      try {
        if (connection != null) {
          connection.close();
        }
        if (statement != null) {
          statement.close();
        }
        if (resultSet != null) {
          resultSet.close();
        }
      } catch (SQLException throwables) {
        throwables.printStackTrace();
        return null;
      }
    }
  }

  /**
   *
   */
  @Override
  public boolean delete(String sql, Object... parameters) {
    ResultSet resultSet = null;
    Connection connection = null;
    PreparedStatement statement = null;
    boolean result = true;
    try {
      connection = getConnection();
      connection.setAutoCommit(false);
      statement = connection.prepareStatement(sql);
      setParameter(statement, parameters);
      statement.executeUpdate();
      connection.commit();
    } catch (SQLException e) {
      result = false;
      System.out.println(e);
      if (connection != null) {
        try {
          connection.rollback();
        } catch (SQLException throwables) {
          System.out.println(e);
        }
      }
    } finally {
      try {
        if (connection != null) {
          connection.close();
        }
        if (statement != null) {
          statement.close();
        }
        if (resultSet != null) {
          resultSet.close();
        }
      } catch (SQLException throwables) {
        System.out.println(throwables);
      }
    }
    return result;
  }

  @Override
  public int count(String sql, Object... parameters) {
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;
    int count = 0;
    try {
      connection = getConnection();
      statement = connection.prepareStatement(sql);
      resultSet = statement.executeQuery(sql);
      if (resultSet.next()) {
        return count = resultSet.getInt(1);
      }
    } catch (SQLException e) {
      System.out.println(e);
      return 0;
    } finally {
      try {
        if (connection != null) {
          connection.close();
        }
        if (statement != null) {
          statement.close();
        }
        if (resultSet != null) {
          resultSet.close();
        }
      } catch (SQLException throwables) {
        System.out.println(throwables);
      }
    }
    return 0;
  }

  private void setParameter(PreparedStatement statement, Object... parameters) {
    try {
      for (int count = 0; count < parameters.length; count++) {
        Object parameter = parameters[count];
        logger.info("Parameters : " + parameter);
        int index = count + 1;
        if (parameter instanceof Long) {
          statement.setLong(index, (Long) parameter);
        } else if (parameter instanceof Integer) {
          statement.setInt(index, (Integer) parameter);
        } else if (parameter instanceof Float) {
          statement.setFloat(index, (Float) parameter);
        } else if (parameter instanceof Date) {
          Date dateUtil = (Date) parameter;
          java.sql.Date date = new java.sql.Date(dateUtil.getTime());
          statement.setDate(index, date);
        } else if (parameter instanceof Timestamp) {
          statement.setTimestamp(index, (Timestamp) parameter);
        } else if (parameter instanceof String) {
          statement.setString(index, (String) parameter);
        } else if (parameter == null) {
          statement.setNull(index, Types.NULL);
        }
      }

    } catch (SQLException e) {
      System.out.println(e);
    }
  }
}
