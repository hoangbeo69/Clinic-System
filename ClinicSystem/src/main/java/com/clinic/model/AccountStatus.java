/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.model;

import java.util.Arrays;

/**
 *
 * @author nguye
 */
public enum AccountStatus {

    ACTIVE(0), INACTIVE(1);

    private int statusCode;

     AccountStatus(Integer statusCode) {
        this.statusCode = statusCode;
    }

    public int getStatusCode() {
        return statusCode;
    }

    public static AccountStatus get(int statusCode) {

        return Arrays.stream(AccountStatus.values())
                .parallel()
                .filter(e -> e.getStatusCode() == statusCode)
                .findFirst().orElse(INACTIVE);
    }
}
