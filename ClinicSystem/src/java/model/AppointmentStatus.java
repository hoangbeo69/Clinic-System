/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author nguye
 */
public enum AppointmentStatus {
    PENDING(0),
    STAFFCONFIRM(1),
    CONFIRMBOOKING(2),
    DOCTORCONFIRM(3),
    RETURNRESULT(4),
    COMPLETE(5);

    private Integer statusCode;

    private AppointmentStatus(Integer statusCode) {
        this.statusCode = statusCode;
    }

    public Integer getStatusCode() {
        return statusCode;
    }

}
