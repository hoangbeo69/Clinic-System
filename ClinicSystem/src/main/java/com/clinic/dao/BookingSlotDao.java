/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.dao;

import com.clinic.dto.BookingSlotDto;
import com.clinic.entity.BookingSlot;
import java.util.List;

/**
 * @author nguye
 */
public interface BookingSlotDao extends GenericDao {

  Long save(BookingSlot bookingSlot);

  Long update(BookingSlot bookingSlot);

  BookingSlot findById(Long id);

  boolean delete(Long id);

  List<BookingSlot> findAll();

  BookingSlotDto findDtoById(Long id);
}
