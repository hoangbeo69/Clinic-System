package com.clinic.controller.appointment;

import com.clinic.model.TimeSlot;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "appointment/review", value = "/appointment/review")
public class ReviewController extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      request.setAttribute("TIMESLOTS", TimeSlot.values());
      request.getRequestDispatcher("/views/appointment-review.jsp").forward(request, response);

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

  }
}
