<%-- 
    Document   : userMyReservation
    Created on : May 20, 2022, 6:01:28 PM
    Author     : Heshan Kalhara
--%>

<%@page import="java.util.ArrayList"%>
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
                        <th>User First Name</th>
                        <th>Takeoff Airport</th>
                        <th>Landing Airport</th>
                        <th>Takeoff Date</th>
                        <th>Takeoff Time</th>
                        <th>Gate</th>
                        <th>Seat Number</th>
                        <th>Total Price</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        if ((request.getAttribute("reservationResult") != null)) {
                            List data = new ArrayList();
                            data = (List) request.getAttribute("reservationResult");
                            Iterator itr = data.iterator();
                            while (itr.hasNext()) {
                    %>
                    <tr>
                        <td><%=itr.next()%></td>
                        <td><%=itr.next()%></td>
                        <td><%=itr.next()%></td>
                        <td><%=itr.next()%></td>
                        <td><%=itr.next()%></td>
                        <td><%=itr.next()%></td>
                        <td><%=itr.next()%></td>
                        <td><%=itr.next()%></td>
                        
                        <td><form action="GetSelectedTicketData" method="POST">
                                <input type="hidden" name="ticket_id" value="<%=itr.next()%>" />
                                <input type="submit" value="Update" />
                            </form>
                        </td>
                        <td>
                            <form action="DeleteTicketServlet" method="POST">
                                <input type="hidden" name="ticket_id_delete" value="<%=itr.next()%>" />
                                <input type="submit" value="Delete" />
                            </form>
                        </td>
                        
                    </tr>
                    <%}
                            }%>
                </tbody>
            </table>
        </div>
    </body>
</html>
