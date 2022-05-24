<%-- 
    Document   : AddReservationForm
    Created on : May 24, 2022, 4:20:11 PM
    Author     : Heshan Kalhara
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add reservation form</title>
    </head>
    <body>
        <form action="CreateTicketServlet" method="POST">
            <table border="1">
                <%
                    if ((request.getAttribute("selectedResult") != null)) {
                        List data = new ArrayList();
                        data = (List) request.getAttribute("selectedResult");
                        Iterator itr = data.iterator();
                        while (itr.hasNext()) {
                %>
                <tbody>
                    <tr>
                        <td>TO</td>
                        <td><%=itr.next()%></td>
                    </tr>
                    <tr>
                        <td>Air Time</td>
                        <td><%=itr.next()%></td>
                    </tr>
                    <tr>
                        <td>Takeoff Date</td>
                        <td><%=itr.next()%></td>
                    </tr>
                    <tr>
                        <td>From</td>
                        <td><%=itr.next()%></td>
                    </tr>
                    <tr>
                        <td>Land Time</td>
                        <td><%=itr.next()%></td>
                    </tr>
                    <tr>
                        <td>Land Date</td>
                        <td><%=itr.next()%></td>
                    </tr>
                    <tr>
                        <td>Gate</td>
                        <td><%=itr.next()%></td>
                    </tr>
                    <tr>
                        <td>Cost</td>
                        <td><input type="text" name="cost" value="<%=itr.next()%>" readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td>Aircraft</td>
                        <td><%=itr.next()%></td>
                    </tr>
                <input type="hidden" name="flight_id" value="<%=itr.next()%>" readonly="readonly" />
                <%}
            }%>
                <tr>
                    <td>Class</td>
                    <td><select name="class" required>
                            <option value="101">1st class</option>
                            <option value="102">Business</option>
                            <option value="103">Economy</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Seat</td>
                    <td><select name="seatNumber" required>
                            <option value="1">1A</option>
                            <option value="2">B1</option>
                            <option value="3">C1</option>
                        </select></td>
                </tr>
                <tr>
                    <td>Number of seats</td>
                    <td><input type="text" name="seats" value="" size="3" /></td>
                </tr>
                <tr>
                    <td><input type="reset" value="Cancel" /></td>
                    <td><input type="submit" value="Book Reservation" /></td>
                </tr>
                </tbody>

            </table>
        </form>
    </body>
</html>
