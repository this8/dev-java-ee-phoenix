/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.phoenixairline.controllers.FlightControllers;

import com.phoenixairline.models.FlightDao;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewFlightInfoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public ViewFlightInfoServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

        try {
            FlightDao flightDao = new FlightDao();
            List flightDetails = flightDao.viewAllFlightDetails();

            request.setAttribute("result", flightDetails);

            RequestDispatcher rd = request.getRequestDispatcher("AllFlightDetails.jsp");
            rd.forward(request, response);
        } catch (ServletException | IOException | SQLException ex) {
            Logger.getLogger(ViewFlightInfoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
