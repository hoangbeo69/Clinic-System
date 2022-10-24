/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.util;

import java.util.List;
import java.util.StringJoiner;
import org.apache.commons.lang3.ObjectUtils;

/**
 * @author nguye
 */
public class StringUtil {

  //    public static String arrayToDelimitedString(Object[] arr, String delim) {
  //        if (ObjectUtils.isEmpty(arr)) {
  //            return "";
  //        } else if (arr.length == 1) {
  //            return ObjectUtils.toString(arr[0]);
  //        } else {
  //            StringJoiner sj = new StringJoiner(delim);
  //            Object[] var3 = arr;
  //            int var4 = arr.length;
  //
  //            for (int var5 = 0; var5 < var4; ++var5) {
  //                Object elem = var3[var5];
  //                sj.add(String.valueOf(elem));
  //            }
  //
  //            return sj.toString();
  //        }
  //    }

  public static String arrayToDelimitedString(List<Long> arr, String delim) {
    if (ObjectUtils.isEmpty(arr)) {
      return "";
    } else if (arr.size() == 1) {
      return ObjectUtils.toString(arr.get(0));
    } else {
      StringJoiner sj = new StringJoiner(delim);
      List<Long> var3 = arr;
      int var4 = arr.size();

      for (int var5 = 0; var5 < var4; ++var5) {
        Object elem = var3.get(var5);
        sj.add(String.valueOf(elem));
      }

      return sj.toString();
    }
  }
}
