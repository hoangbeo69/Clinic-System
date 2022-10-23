package com.clinic.controller.appointment;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.model.TimeSlot;
import com.clinic.service.AppointmentBookingService;
import com.clinic.service.AppointmentBookingServiceImpl;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import org.apache.commons.lang3.StringUtils;

@WebServlet(name = "appointment/returnResult", value = "/appointment/returnResult")
public class ReturnResultController extends HttpServlet {

  private AppointmentBookingService appointmentBookingService;

  public ReturnResultController() {
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
    request.setAttribute("appointment", bookingAppointmentDto);
    request.setAttribute("TIMESLOTS", TimeSlot.values());
    request.getRequestDispatcher("/views/appointment-returnresult.jsp").forward(request, response);

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

  }
}
