/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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

/**
 *
 * @author Heshan Kalhara
 */
public class UpdateTicketServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateTicketServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateTicketServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int ticketId = Integer.parseInt(request.getParameter("id"));
        System.out.println(ticketId);
        String classId = request.getParameter("class");
        System.out.println(classId);
        int seatId = Integer.parseInt(request.getParameter("seatNumber"));
        System.out.println(seatId);
        int seats = Integer.parseInt(request.getParameter("seats"));
        System.out.println(seats);
        float cost = Float.parseFloat(request.getParameter("cost"));
        float price = 0;
        switch (classId) {
            case "101":
                price = (float) (cost * 1.9)*seats;
                break;
            case "102":
                price = (float) (cost * 1.5)*seats;
                break;
            default:
                price = cost*seats;
                break;
        }
        System.out.println(price);
        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("user_id");
        System.out.println("user id from session " + userId);

        Ticket ticketBean = new Ticket();
        TicketAccess updateTicket = new TicketAccess();
        String updateResult = updateTicket.updateTicketDetails(ticketId,price,classId,seatId,userId);
        PrintWriter out = response.getWriter();
        out.println(updateResult);
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
