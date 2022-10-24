package com.clinic.controller.appointment;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.model.AppointmentStatus;
import com.clinic.model.TimeSlot;
import com.clinic.service.AppointmentBookingService;
import com.clinic.service.AppointmentBookingServiceImpl;
import com.clinic.util.FormUtil;
import com.clinic.util.HttpUtil;
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
@WebServlet(name = "appointment/confirmInfo", value = "/appointment/confirmInfo")
public class ConfirmInfoController extends HttpServlet {

  private AppointmentBookingService appointmentBookingService;

  public ConfirmInfoController() {
    this.appointmentBookingService = new AppointmentBookingServiceImpl();
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
    HttpUtil.setMessageResponse(request);
    request.getRequestDispatcher("/views/appointment-confirminfo.jsp").forward(request, response);

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    BookingAppointmentDto bookingAppointmentDto = FormUtil.toModel(BookingAppointmentDto.class,
        request);
    log.info(bookingAppointmentDto.toString());
    bookingAppointmentDto.setStatus(AppointmentStatus.CONFIRMINFO);
    bookingAppointmentDto.setCreatedDate(new Timestamp(System.currentTimeMillis()));
    boolean result = appointmentBookingService.confirmInfo(bookingAppointmentDto);
    if (result) {
      response.sendRedirect(request.getContextPath() + "/appointment/confirmBooking?id=" +
                            bookingAppointmentDto.getId());
    } else {
      response.sendRedirect(request.getContextPath() + "/appointment/confirmInfo?id=" +
                            bookingAppointmentDto.getId() +
                            "&message=booking_notsuccess&alert=danger");
    }
  }
}
