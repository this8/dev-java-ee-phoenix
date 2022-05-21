<%-- 
    Document   : userMyReservation
    Created on : May 20, 2022, 6:01:28 PM
    Author     : Heshan Kalhara
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Reservation</title>
    </head>
    <body>
        <h1>My Reservation</h1>
        <div align="center">
            <table border="1">
                <thead>
                    <tr>
                        <th>Passport Number</th>
                        <th>Date</th>
                        <th>Class</th>
                        <th>Number of seats</th>
                        <th>Total Price</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Iterator itr;
                        List ticketValues = (List) request.getAttribute("reservationResult");
                        for (itr = ticketValues.iterator(); itr.hasNext();) {

                    %>
                    <tr>
                        <td><%= itr.next()%></td>
                        <td><%= itr.next()%></td>
                        <td><%= itr.next()%></td>
                        <td><%= itr.next()%></td>
                        <td><%= itr.next()%></td>
                    </tr>
                    <%}
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>
