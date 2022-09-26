/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Timestamp;
import java.util.Date;
import model.AppointmentStatus;

/**
 *
 * @author nguye
 */
public class Appointment {
    private Long id;
    private Long doctorId;
    private Long medicalRecordId;
    private TimeSlot timeSlot;
    private Integer timeSlotOrder;
    private Date dataSlot;
    private AppointmentStatus status;
    private Integer statusCode;
    private String statusDescription;
    private String appointmentCode;
    private Long bookingSlotId;
    private String createdBy;
    private String updateBy;
    private Timestamp createdDate;
    private Timestamp updatedDate;

    public Appointment(Long id, Long doctorId, Long medicalRecordId, TimeSlot timeSlot, Integer timeSlotOrder, Date dataSlot, AppointmentStatus status, Integer statusCode, String statusDescription, String appointmentCode, Long bookingSlotId, String createdBy, String updateBy, Timestamp createdDate, Timestamp updatedDate) {
        this.id = id;
        this.doctorId = doctorId;
        this.medicalRecordId = medicalRecordId;
        this.timeSlot = timeSlot;
        this.timeSlotOrder = timeSlotOrder;
        this.dataSlot = dataSlot;
        this.status = status;
        this.statusCode = statusCode;
        this.statusDescription = statusDescription;
        this.appointmentCode = appointmentCode;
        this.bookingSlotId = bookingSlotId;
        this.createdBy = createdBy;
        this.updateBy = updateBy;
        this.createdDate = createdDate;
        this.updatedDate = updatedDate;
    }

    public Appointment() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Long doctorId) {
        this.doctorId = doctorId;
    }

    public Long getMedicalRecordId() {
        return medicalRecordId;
    }

    public void setMedicalRecordId(Long medicalRecordId) {
        this.medicalRecordId = medicalRecordId;
    }

    public TimeSlot getTimeSlot() {
        return timeSlot;
    }

    public void setTimeSlot(TimeSlot timeSlot) {
        this.timeSlot = timeSlot;
    }

    public Integer getTimeSlotOrder() {
        return timeSlotOrder;
    }

    public void setTimeSlotOrder(Integer timeSlotOrder) {
        this.timeSlotOrder = timeSlotOrder;
    }

    public Date getDataSlot() {
        return dataSlot;
    }

    public void setDataSlot(Date dataSlot) {
        this.dataSlot = dataSlot;
    }

    public AppointmentStatus getStatus() {
        return status;
    }

    public void setStatus(AppointmentStatus status) {
        this.status = status;
        this.statusCode = status.getStatusCode();
    }

    public Integer getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(Integer statusCode) {
        this.statusCode = statusCode;
    }

    public String getStatusDescription() {
        return statusDescription;
    }

    public void setStatusDescription(String statusDescription) {
        this.statusDescription = statusDescription;
    }

    public String getAppointmentCode() {
        return appointmentCode;
    }

    public void setAppointmentCode(String appointmentCode) {
        this.appointmentCode = appointmentCode;
    }

    public Long getBookingSlotId() {
        return bookingSlotId;
    }

    public void setBookingSlotId(Long bookingSlotId) {
        this.bookingSlotId = bookingSlotId;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public Timestamp getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }

    public Timestamp getUpdatedDate() {
        return updatedDate;
    }

    public void setUpdatedDate(Timestamp updatedDate) {
        this.updatedDate = updatedDate;
    }
    
    
}
