package com.clinic.util;

import com.clinic.dto.BookingAppointmentDto;

public class ObjectUtils {

  public static BookingAppointmentDto merge(BookingAppointmentDto ba1, BookingAppointmentDto ba2) {
    if (ba2.getStatus() != null) {
      ba1.setStatus(ba2.getStatus());
    }
    if (ba2.getPatientId() != null) {
      ba1.setPatientId(ba2.getPatientId());
    }
    if (ba2.getDescription() != null) {
      ba1.setDescription(ba2.getDescription());
    }
    if (ba2.getDoctorId() != null) {
      ba1.setDoctorId(ba2.getDoctorId());
    }
    if (ba2.getDateSlot() != null) {
      ba1.setDateSlot(ba2.getDateSlot());
    }
    if (ba2.getTimeSlotOrder() != null) {
      ba1.setTimeSlotOrder(ba2.getTimeSlotOrder());
    }
    if (ba2.getTimeSlot() != null) {
      ba1.setTimeSlot(ba2.getTimeSlot());
    }
    if (ba2.getAppointmentCode() != null) {
      ba1.setAppointmentCode(ba2.getAppointmentCode());
    }
    if (ba2.getBookingSlotId() != null) {
      ba1.setBookingSlotId(ba2.getBookingSlotId());
    }
    if (ba2.getEmail() != null) {
      ba1.setEmail(ba2.getEmail());
    }
    if (ba2.getDob() != null) {
      ba1.setDob(ba2.getDob());
    }
    if (ba2.getFullName() != null) {
      ba1.setFullName(ba2.getFullName());
    }
    if (ba2.getMedicalRecordId() != null) {
      ba1.setMedicalRecordId(ba2.getMedicalRecordId());
    }
    if (ba2.getPhoneNumber() != null) {
      ba1.setPhoneNumber(ba2.getPhoneNumber());
    }
    if (ba2.getRoomId() != null) {
      ba1.setRoomId(ba2.getRoomId());
    }
    if (ba2.getSex() != null) {
      ba1.setSex(ba2.getSex());
    }
    if (ba2.getAddress() != null) {
      ba1.setAddress(ba2.getAddress());
    }
    if (ba2.getGuardianFullname() != null) {
      ba1.setGuardianFullname(ba2.getGuardianFullname());
    }
    if (ba2.getGuardianPhoneNumber() != null) {
      ba1.setGuardianPhoneNumber(ba2.getGuardianPhoneNumber());
    }
    if (ba2.getStatusCode() != null) {
      ba1.setStatusCode(ba2.getStatusCode());
    }
    if (ba2.getRoomDescription() != null) {
      ba1.setRoomDescription(ba2.getRoomDescription());
    }
    if (ba2.getRoomName() != null) {
      ba1.setRoomName(ba2.getRoomName());
    }
    if (ba2.getStatusDescription() != null) {
      ba1.setStatusDescription(ba2.getStatusDescription());
    }
    if (ba2.getDoctorId() != null) {
      ba1.setDoctorId(ba2.getDoctorId());
    }
    return ba1;
  }
}
