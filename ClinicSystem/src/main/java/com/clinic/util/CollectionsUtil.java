/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.util;

import java.util.Collection;

/**
 * @author nguye
 */
public class CollectionsUtil {

  public static boolean isEmpty(Collection collection) {
    if (null == collection) {
      return true;
    }
    return collection.isEmpty();
  }
}
