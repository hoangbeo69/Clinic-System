package com.clinic.controller.appointment;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.MedicalHistory;
import com.clinic.model.AppointmentStatus;
import com.clinic.model.MedicalReport;
import com.clinic.model.TimeSlot;
import com.clinic.service.AppointmentBookingService;
import com.clinic.service.AppointmentBookingServiceImpl;
import com.clinic.service.DoctorService;
import com.clinic.service.DoctorServiceImpl;
import com.clinic.service.MedicalHistoryService;
import com.clinic.service.MedicalHistoryServiceImpl;
import com.clinic.service.RoomService;
import com.clinic.service.RoomServiceImpl;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang3.StringUtils;

@WebServlet(name = "appointment/review", value = "/appointment/review")
public class ReviewController extends HttpServlet {

  private AppointmentBookingService appointmentBookingService;
  private RoomService               roomService;
  private DoctorService             doctorService;
  private MedicalHistoryService     medicalHistoryService;

  public ReviewController() {
    appointmentBookingService = new AppointmentBookingServiceImpl();
    roomService = new RoomServiceImpl();
    doctorService = new DoctorServiceImpl();
    medicalHistoryService = new MedicalHistoryServiceImpl();
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
    request.setAttribute("ROOMS", roomService.findAll());
    request.setAttribute("DOCTORS", doctorService.findAll());
    MedicalHistory medicalHistory = medicalHistoryService.findById(
        bookingAppointmentDto.getMedicalRecordId());

    request.setAttribute("medicalHistory", medicalHistory);
    if (medicalHistory != null) {
      request.setAttribute("medicalReport", medicalHistory.getMedicalReport());
    } else {
      request.setAttribute("medicalReport", new MedicalReport());
    }
    request.getRequestDispatcher("/views/appointment-review.jsp").forward(request, response);

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    Long id = Long.parseLong(request.getParameter("id"));
    BookingAppointmentDto bookingAppointmentDto = appointmentBookingService.findById(id);
    bookingAppointmentDto.setStatus(AppointmentStatus.COMPLETE);
    boolean result = appointmentBookingService.complete(bookingAppointmentDto);
    if (result) {
      response.sendRedirect(
          request.getContextPath() + "/appointment/complete?id=" + bookingAppointmentDto.getId());
    } else {
      response.sendRedirect(
          request.getContextPath() + "/appointment/review?id=" + bookingAppointmentDto.getId() +
          "&message=booking_notsuccess&alert=danger");
    }
  }
}
