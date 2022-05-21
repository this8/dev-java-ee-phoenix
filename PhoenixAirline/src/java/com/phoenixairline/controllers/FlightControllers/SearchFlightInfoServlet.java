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

/**
 *
 * @author dell
 */
public class SearchFlightInfoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public SearchFlightInfoServlet() {
        super();
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
             {
        
        try {
            String searchValue = request.getParameter("searchData");
            String searchCategory=request.getParameter("searchCategory");
            
            FlightDao flightDao = new FlightDao();
            List SearchFlightDetails = flightDao.searchData(searchValue,searchCategory);
            
            request.setAttribute("result", SearchFlightDetails);
            
            RequestDispatcher rd = request.getRequestDispatcher("ResultsSearchFlights.jsp");
            rd.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(SearchFlightInfoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        }

    }

 
