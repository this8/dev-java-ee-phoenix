package com.phoenixairline.controllers.ticketmanagement;

import com.phoenixairline.models.Ticket;
import com.phoenixairline.models.TicketAccess;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CreateTicketServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
        int ticketId = 1;
        int flightId = Integer.parseInt(request.getParameter("flight_id"));
        String classId = request.getParameter("class");
        int seatId = Integer.parseInt(request.getParameter("seatNumber"));
        int seats = Integer.parseInt(request.getParameter("seats"));
        float price = Float.parseFloat(request.getParameter("cost"));
        switch (classId) {
            case "101":
                price = (float) (price * 1.9)*seats;
                break;
            case "102":
                price = (float) (price * 1.5)*seats;
                break;
            default:
                price = price*seats;
                break;
        }

        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("user_id");
        System.out.println("user id from session " + userId);
        
        Ticket ticketBean = new Ticket(ticketId,price,userId,flightId,seatId,classId);
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
