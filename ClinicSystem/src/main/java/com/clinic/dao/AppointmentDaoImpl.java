/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.entity.Appointment;
import com.clinic.mapper.AppointmentMapper;
import com.clinic.util.CollectionsUtil;
import java.util.List;

/**
 * @author nguye
 */
public class AppointmentDaoImpl extends AbstractDAO implements AppointmentDao {

  @Override
  public Long save(Appointment appointment) {
    StringBuilder sql = new StringBuilder("INSERT INTO Appointment ");
    sql.append(
        "(PatientId,DoctorId,MedicalRecordId,TimeSlot,DateSlot,Status,StatusDescription,CreatedBy,CreatedDate,UpdateBy,BookingSlotId,UpdateDate) Values");
    sql.append("(?,?,?,?,?,?,?,?,?,?,?,?)");
    return insert(sql.toString(), appointment.getPatientId(), appointment.getDoctorId(),
        appointment.getMedicalRecordId(), appointment.getTimeSlotOrder(), appointment.getDateSlot(),
        appointment.getStatusCode(), appointment.getStatusDescription(), appointment.getCreatedBy(),
        appointment.getCreatedDate(), appointment.getUpdateBy(), appointment.getBookingSlotId(),
        appointment.getUpdatedDate());
  }

  @Override
  public Long update(Appointment appointment) {
    StringBuilder sql = new StringBuilder("UPDATE Appointment ");
    sql.append(
        "SET PatientId = ? ,DoctorId = ?,MedicalRecordId = ?,TimeSlot = ? ,DateSlot = ? ,Status = ? ,StatusDescription = ? ,CreatedBy = ? ," +
        "CreatedDate = ? ,UpdateBy = ? ,BookingSlotId = ? ,UpdateDate = ? WHERE Id = ?");
    boolean result = update(sql.toString(), appointment.getPatientId(), appointment.getDoctorId(),
        appointment.getMedicalRecordId(), appointment.getTimeSlotOrder(), appointment.getDateSlot(),
        appointment.getStatusCode(), appointment.getStatusDescription(), appointment.getCreatedBy(),
        appointment.getCreatedDate(), appointment.getUpdateBy(), appointment.getBookingSlotId(),
        appointment.getUpdatedDate(), appointment.getId());
    return result ? appointment.getId() : null;
  }

  @Override
  public Appointment findById(Long id) {
    String sql = "SELECT * FROM Appointment WHERE Id = ? ";
    List<Appointment> appointments = query(sql, new AppointmentMapper(), id);
    return CollectionsUtil.isEmpty(appointments) ? null : appointments.get(0);
  }

  @Override
  public boolean delete(Long id) {
    String sql = "DELETE Appointment WHERE ID = ?";
    return delete(sql, id);
  }

  @Override
  public List<Appointment> findAll() {
    String sql = "SELECT * FROM Appointment";
    return query(sql, new AppointmentMapper());
  }

}
