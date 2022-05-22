package com.phoenixairline.controllers.FlightControllers;

import com.phoenixairline.models.Flight;
import com.phoenixairline.models.FlightDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteFlightInfoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public DeleteFlightInfoServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        int FlightId = Integer.parseInt(request.getParameter("flightId"));

        Flight flightBean = new Flight(FlightId);
        FlightDAO flightDAO = new FlightDAO();

        String result = flightDAO.DeleteFlightDetails(flightBean);
        PrintWriter out = response.getWriter();
        out.println(result);

    }

}
