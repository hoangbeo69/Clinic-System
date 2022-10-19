package com.clinic.controller.appointment;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.model.TimeSlot;
import com.clinic.model.UserDetail;
import com.clinic.service.AppointmentBookingService;
import com.clinic.service.AppointmentBookingServiceImpl;
import com.clinic.service.DoctorService;
import com.clinic.service.DoctorServiceImpl;
import com.clinic.service.RoomService;
import com.clinic.service.RoomServiceImpl;
import com.clinic.util.FormUtil;
import com.clinic.util.SessionUtil;
import java.sql.Timestamp;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "appointment/pending", value = "/appointment/pending")
public class PendingController extends HttpServlet {

  private AppointmentBookingService appointmentBookingService;
  private RoomService roomService;
  private DoctorService doctorService;


  public PendingController() {
    appointmentBookingService = new AppointmentBookingServiceImpl();
    roomService = new RoomServiceImpl();
    doctorService = new DoctorServiceImpl();
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    request.setAttribute("TIMESLOTS", TimeSlot.values());
    request.setAttribute("ROOMS",roomService.findAll());
    request.setAttribute("DOCTORS",doctorService.findAll());
    request.getRequestDispatcher("/views/appointment-pending.jsp").forward(request, response);

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    BookingAppointmentDto bookingAppointmentDto = FormUtil.toModel(BookingAppointmentDto.class,
        request);
    bookingAppointmentDto.setCreatedBy(
        ((UserDetail) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUsername());
    bookingAppointmentDto.setCreatedDate(new Timestamp(System.currentTimeMillis()));
    boolean result = appointmentBookingService.booking(bookingAppointmentDto);
    if (result) {
      response.sendRedirect(
          request.getContextPath() + "/appointment/pending?id=" + bookingAppointmentDto.getId() +
              "&message=booking_success&alert" + "=success");
    } else {
      response.sendRedirect(
          request.getContextPath() + "/appointment/pending?id=" + bookingAppointmentDto.getId() +
              "&message=booking_notsuccess" + "&alert" + "=danger");
    }
  }
}
