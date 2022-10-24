package com.clinic.controller.appointment;

import com.clinic.dto.BookingAppointmentDto;
import com.clinic.entity.MedicalHistory;
import com.clinic.model.MedicalReport;
import com.clinic.model.TimeSlot;
import com.clinic.model.UserDetail;
import com.clinic.service.AppointmentBookingService;
import com.clinic.service.AppointmentBookingServiceImpl;
import com.clinic.service.MedicalHistoryService;
import com.clinic.service.MedicalHistoryServiceImpl;
import com.clinic.util.FormUtil;
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
@WebServlet(name = "appointment/returnResult", value = "/appointment/returnResult")
public class ReturnResultController extends HttpServlet {

  private AppointmentBookingService appointmentBookingService;

  private MedicalHistoryService medicalHistoryService;

  public ReturnResultController() {
    appointmentBookingService = new AppointmentBookingServiceImpl();
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
    MedicalHistory medicalHistory = medicalHistoryService.findById(
        bookingAppointmentDto.getMedicalRecordId());

    request.setAttribute("medicalHistory", medicalHistory);
    if (medicalHistory != null) {
      request.setAttribute("medicalReport", medicalHistory.getMedicalReport());
    } else {
      request.setAttribute("medicalReport", new MedicalReport());
    }
    request.setAttribute("appointment", bookingAppointmentDto);
    request.setAttribute("TIMESLOTS", TimeSlot.values());
    request.getRequestDispatcher("/views/appointment-returnresult.jsp").forward(request, response);

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    request.setCharacterEncoding("UTF-8");
    String appointmentId = request.getParameter("appointmentId");
    String patientId = request.getParameter("patientId");
    String medicalHistoryId = request.getParameter("id");
    UserDetail userDetail = (UserDetail) SessionUtil.getInstance().getValue(request, "USERMODEL");
    MedicalReport medicalReport = FormUtil.toModel(MedicalReport.class, request);
    log.info("appointmentId : {},patientId : {} ,medicalHistoryId : {}", appointmentId, patientId,
        medicalHistoryId);
    log.info(medicalReport.toString());
    if (StringUtils.isEmpty(appointmentId)) {
      response.sendRedirect(request.getContextPath() + "/appointment/appointmentHome");
    } else {
      MedicalHistory medicalHistory = new MedicalHistory();
      if (StringUtils.isEmpty(medicalHistoryId) || medicalHistoryId.equals("0")) {
        medicalHistory.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        medicalHistory.setCreatedBy(userDetail.getUsername());
      } else {
        medicalHistory.setId(Long.parseLong(medicalHistoryId));
        medicalHistory.setUpdatedDate(new Timestamp(System.currentTimeMillis()));
        medicalHistory.setUpdateBy(userDetail.getUsername());
      }
      medicalHistory.setMedicalReport(medicalReport);
      boolean result = appointmentBookingService.returnResult(Long.parseLong(appointmentId),
          medicalHistory);
      if (result) {
        response.sendRedirect(request.getContextPath() + "/appointment/review?id=" + appointmentId);
      } else {
        response.sendRedirect(
            request.getContextPath() + "/appointment/confirmBooking?id=" + appointmentId +
            "&message=booking_notsuccess&alert=danger");
      }
    }


  }
}
