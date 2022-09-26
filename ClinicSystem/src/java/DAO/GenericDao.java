/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.util.List;
import mapper.RowMapper;

/**
 *
 * @author nguye
 */
public interface GenericDao<T> {
    <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
    boolean update (String sql,Object... parameters);
    Long insert (String sql,Object... parameters);
    boolean delete (String sql,Object... parameters);
    int count(String sql,Object... parameters);
}
