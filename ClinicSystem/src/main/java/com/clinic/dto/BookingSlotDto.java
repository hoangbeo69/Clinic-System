package com.clinic.dto;

import com.clinic.model.BookingStatus;
import com.clinic.model.TimeSlot;
import java.util.Date;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class BookingSlotDto {

  private Long          id;
  private Long          roomId;
  private Date          dateSlot;
  private TimeSlot      timeSlot;
  private Integer       timeSlotOrder;
  private Long          doctorId;
  private BookingStatus status;
  private Integer       statusCode;
  private String        roomName;
  private String        description;
}
