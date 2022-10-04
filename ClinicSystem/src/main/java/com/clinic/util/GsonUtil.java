/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.util;

import com.google.gson.Gson;

/**
 * @author nguye
 */
public class GsonUtil {

  private GsonUtil() {

  }

  public static Gson getGson() {
    return new Gson();
  }
}
