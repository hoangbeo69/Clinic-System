package com.clinic.controller.appointment;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.model.AppointmentStatus;
import com.clinic.model.TimeSlot;
import com.clinic.service.AppointmentBookingService;
import com.clinic.service.AppointmentBookingServiceImpl;
import com.clinic.util.FormUtil;
import java.sql.Timestamp;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "appointment/confirmBooking", value = "/appointment/confirmBooking")
public class ConfirmBookingController extends HttpServlet {

  private AppointmentBookingService appointmentBookingService;

  public ConfirmBookingController() {
    this.appointmentBookingService = new AppointmentBookingServiceImpl();
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    request.setAttribute("TIMESLOTS", TimeSlot.values());
    request.getRequestDispatcher("/views/appointment-confirmbooking.jsp")
        .forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    BookingAppointmentDto bookingAppointmentDto = FormUtil.toModel(BookingAppointmentDto.class,
        request);
    bookingAppointmentDto.setStatus(AppointmentStatus.CONFIRMBOOKING);
    bookingAppointmentDto.setCreatedDate(new Timestamp(System.currentTimeMillis()));
    boolean result = appointmentBookingService.confirmBooking(bookingAppointmentDto);
    if (result) {
      response.sendRedirect(request.getContextPath() +
                            "/appointment/confirmDoctor?message=booking_success&alert=success");
    } else {
      response.sendRedirect(request.getContextPath() +
                            "/appointment/confirmBooking?message=booking_notsuccess&alert=danger");
    }
  }
}
