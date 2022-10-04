/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Logger;

/**
 *
 * @author nguye
 */
public class DateUtil {

    static Logger logger = Logger.getLogger(DateUtil.class.toString());

    public static String getStrDate(Date date) {
        SimpleDateFormat sm = new SimpleDateFormat("yyyy-mm-dd");
        if (null == date) {
            date = new Date();
        }
        return sm.format(date);
    }

    public static Date getDate(String strdate) {
        try {
            SimpleDateFormat sm = new SimpleDateFormat("yyyy-mm-dd");
            return sm.parse(strdate);

        } catch (ParseException ex) {
            return new Date();
        }
    }
}
