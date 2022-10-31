/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.clinic.controller;

import com.clinic.entity.BookingSlot;
import com.clinic.model.BookingStatus;
import com.clinic.model.TimeSlot;
import com.clinic.model.UserDetail;
import com.clinic.service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.Date;
import java.text.SimpleDateFormat;

@WebServlet(name = "ScheduleController", urlPatterns = {"/schedule"})
public class ScheduleController extends HttpServlet {

    AccountService accountService;

    RoomService roomService;

    BookingSlotService bookingSlotService;

    public ScheduleController() {
        accountService = new AccountServiceImpl();
        roomService = new RoomServiceImpl();
        bookingSlotService = new BookingSlotServiceImpl();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            request.setAttribute("timeSlots",TimeSlot.values());
            request.setAttribute("rooms",roomService.findAll());
            request.getRequestDispatcher("/views/schedule.jsp").forward(request,response);
        } catch (Exception e) {

        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            UserDetail user = (UserDetail) request.getSession().getAttribute("USERMODEL");
            long roomId = Long.parseLong(request.getParameter("room"));
            Date date = sdf.parse(request.getParameter("date"));
            int slotOrder = Integer.parseInt(request.getParameter("timeSlot"));
            BookingStatus bookingStatus =  BookingStatus.BOOKED;
            BookingSlot bookingSlot = new BookingSlot(
                    null,
                    roomId,
                    date,
                    TimeSlot.get(slotOrder),
                    slotOrder,
                    user.getId(),
                    bookingStatus,
                    bookingStatus.getStatusCode()
            );
            if(bookingSlotService.save(bookingSlot)==0){
                response.sendRedirect(request.getContextPath()+"/schedule?mess=fail");
            }
            else{
                response.sendRedirect(request.getContextPath()+"/schedule?mess=success");
            }
        } catch (Exception e) {
            response.sendRedirect(request.getContextPath()+"/schedule?mess=fail");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
