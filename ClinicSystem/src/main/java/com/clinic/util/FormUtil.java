/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.util;

import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;

public class FormUtil {

  public static <T> T toModel(Class<T> tClass, HttpServletRequest request) {
    T object = null;
    try {
      object = tClass.newInstance(); //khởi tạo đối tượng
      DateConverter converter = new DateConverter( null );
      converter.setPattern("yyyy-mm-dd");
      ConvertUtils.register(converter, Date.class);
      BeanUtils.populate(object, request.getParameterMap());
    } catch (InstantiationException e) {
      System.out.println(e);
    } catch (IllegalAccessException e) {
      System.out.println(e);
    } catch (InvocationTargetException e) {
      System.out.println(e);
    }
    return object;
  }
}
