/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.util;


import java.util.ResourceBundle;

/**
 * @author nguye
 */
public class PropertiesService {

  static ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

  public static String get(String key) {
    return resourceBundle.getString(key);
  }
}
