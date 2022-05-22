package com.phoenixairline.controllers.ticketmanagement;

import com.phoenixairline.models.Ticket;
import com.phoenixairline.models.TicketAccess;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CreateTicketServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int userId = 0;//get user id from sesstion
        int fhacId = 0;//get fhacId from backend
        String passport = request.getParameter("passport");
        String date = request.getParameter("date");
        String classType = request.getParameter("class");
        int seats = Integer.parseInt(request.getParameter("seats"));//check with db date type

        HttpSession session = request.getSession();
        userId = (int) session.getAttribute("user_id");
        System.out.println("user id from session " + userId);

        Ticket ticketBean = new Ticket(userId, fhacId, passport, date, classType, seats);
        TicketAccess ticketAccess = new TicketAccess();

        String result = ticketAccess.createTicket(ticketBean);
        PrintWriter out = response.getWriter();
        out.println(result);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
