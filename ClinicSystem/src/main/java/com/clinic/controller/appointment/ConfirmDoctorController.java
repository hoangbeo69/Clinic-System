package com.clinic.controller.appointment;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.model.AppointmentStatus;
import com.clinic.model.TimeSlot;
import com.clinic.service.AppointmentBookingService;
import com.clinic.service.AppointmentBookingServiceImpl;
import com.clinic.service.DoctorService;
import com.clinic.service.DoctorServiceImpl;
import com.clinic.service.RoomService;
import com.clinic.service.RoomServiceImpl;
import com.clinic.util.HttpUtil;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;

@Slf4j
@WebServlet(name = "appointment/confirmDoctor", value = "/appointment/confirmDoctor")
public class ConfirmDoctorController extends HttpServlet {

  private AppointmentBookingService appointmentBookingService;
  private RoomService               roomService;
  private DoctorService             doctorService;

  public ConfirmDoctorController() {
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
    request.getRequestDispatcher("/views/appointment-confirmdoctor.jsp").forward(request, response);

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
    Long id = Long.parseLong(request.getParameter("id"));
    BookingAppointmentDto bookingAppointmentDto = appointmentBookingService.findById(id);
    bookingAppointmentDto.setStatus(AppointmentStatus.CONFIRMDOCTOR);
    boolean result = appointmentBookingService.confirmDoctor(bookingAppointmentDto);
    if (result) {
      response.sendRedirect(request.getContextPath() + "/appointment/returnResult?id=" +
                            bookingAppointmentDto.getId());
    } else {
      response.sendRedirect(request.getContextPath() + "/appointment/confirmDoctor?id=" +
                            bookingAppointmentDto.getId() +
                            "&message=booking_notsuccess&alert=danger");
    }
  }
}
