/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.BufferedReader;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;

/**
 * @author nguye
 */
public class HttpUtil {

  private String value;

  public HttpUtil(String value) {
    this.value = value;
  }

  public static HttpUtil of(BufferedReader reader) {
    StringBuilder sb = new StringBuilder();
    String line;
    try {
      while (true) {
        if (!((line = reader.readLine()) != null)) {
          break;
        }
        sb.append(line);
      }
    } catch (IOException e) {
      e.printStackTrace();
    }
    System.out.println(sb.toString());
    return new HttpUtil(sb.toString());
  }

  public static void setMessageResponse(HttpServletRequest request) {
    String message = request.getParameter("message");
    String alert = request.getParameter("alert");
    if (message != null && alert != null) {
      request.setAttribute("message", PropertiesService.get(message));
      request.setAttribute("alert", alert);
    }
  }

  public <T> T toModel(Class<T> tClass) {
    ObjectMapper objectMapper = new ObjectMapper().disable(
            DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES)
        .disable(MapperFeature.DEFAULT_VIEW_INCLUSION);
    try {
      return objectMapper.readValue(value, tClass);
    } catch (JsonProcessingException e) {
      e.printStackTrace();
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
    return null;
  }
}
