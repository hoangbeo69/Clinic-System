/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author nguye
 */
public enum AccountStatus {

    ACTIVE(0), INACTIVE(1);

    private int statusCode;

    private AccountStatus(Integer statusCode) {
        this.statusCode = statusCode;
    }

    public int getStatusCode() {
        return statusCode;
    }

    public static AccountStatus get(int statusCode) {
        for (AccountStatus accountStatus : AccountStatus.values()) {
            if (accountStatus.getStatusCode() == statusCode) {
                return accountStatus;
            }
        }
        return AccountStatus.INACTIVE;
    }
}
