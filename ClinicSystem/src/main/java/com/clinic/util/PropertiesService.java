/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.util;


import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @author nguye
 */
public class PropertiesService {

  private static Properties properties;

  public static String get(String key) {
    if (properties == null) {
      {
        try (InputStream input = PropertiesService.class.getResourceAsStream(
            "message.properties");) {
          properties = new Properties();
          properties.load(input);
        } catch (IOException io) {
          io.printStackTrace();
        }
      }
    }
    if (key == null) {
      return null;
    }
    return (String) properties.get(key);
  }
}
