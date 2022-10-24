package com.clinic.controller.appointment;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.MedicalHistory;
import com.clinic.model.AppointmentStatus;
import com.clinic.model.MedicalReport;
import com.clinic.model.TimeSlot;
import com.clinic.model.UserDetail;
import com.clinic.service.AppointmentBookingService;
import com.clinic.service.AppointmentBookingServiceImpl;
import com.clinic.service.DoctorService;
import com.clinic.service.DoctorServiceImpl;
import com.clinic.service.RoomService;
import com.clinic.service.RoomServiceImpl;
import com.clinic.util.FormUtil;
import com.clinic.util.HttpUtil;
import com.clinic.util.SessionUtil;
import java.io.IOException;
import java.sql.Timestamp;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;

@Slf4j
@WebServlet(name = "appointment/confirmBooking", value = "/appointment/confirmBooking")
public class ConfirmBookingController extends HttpServlet {

  private AppointmentBookingService appointmentBookingService;
  private RoomService               roomService;
  private DoctorService             doctorService;


  public ConfirmBookingController() {
    appointmentBookingService = new AppointmentBookingServiceImpl();
    roomService = new RoomServiceImpl();
    doctorService = new DoctorServiceImpl();
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    BookingAppointmentDto bookingAppointmentDto = null;
    if (StringUtils.isNotEmpty(request.getParameter("id"))) {
      Long id = Long.parseLong(request.getParameter("id"));
      bookingAppointmentDto = (BookingAppointmentDto) request.getAttribute("appointment");
      if (bookingAppointmentDto == null) {
        bookingAppointmentDto = appointmentBookingService.findById(id);
      }
    }
    log.info(bookingAppointmentDto.toString());
    request.setAttribute("appointment", bookingAppointmentDto);

    request.setAttribute("TIMESLOTS", TimeSlot.values());
    request.setAttribute("ROOMS", roomService.findAll());
    request.setAttribute("DOCTORS", doctorService.findAll());
    HttpUtil.setMessageResponse(request);
    request.getRequestDispatcher("/views/appointment-confirmbooking.jsp")
        .forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
    BookingAppointmentDto bookingAppointmentDto = FormUtil.toModel(BookingAppointmentDto.class,
        request);
    log.info(bookingAppointmentDto.toString());
    bookingAppointmentDto.setStatus(AppointmentStatus.CONFIRMBOOKING);
    bookingAppointmentDto.setCreatedDate(new Timestamp(System.currentTimeMillis()));
    boolean result = appointmentBookingService.confirmBooking(bookingAppointmentDto);
    if (result) {
      response.sendRedirect(request.getContextPath() + "/appointment/confirmDoctor?id=" +
                            bookingAppointmentDto.getId());
    } else {
      response.sendRedirect(request.getContextPath() + "/appointment/confirmBooking?id=" +
                            bookingAppointmentDto.getId() +
                            "&message=booking_notsuccess&alert=danger");
    }
  }
}
