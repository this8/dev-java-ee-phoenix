<%-- 
    Document   : userUpdateReservation
    Created on : May 21, 2022, 10:02:40 AM
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
        <title>Update My Reservation</title>
    </head>
    <body>
        <h1>Fill Below Reservation form to update your Reservations</h1>
        <form action="UpdateTicketServlet" method="POST">
            <table border="1">
                <%
                    if ((request.getAttribute("selectedTicketResult") != null)) {
                        List data = new ArrayList();
                        data = (List) request.getAttribute("selectedTicketResult");
                        Iterator itr = data.iterator();
                        while (itr.hasNext()) {
                %>
                <tbody>
                    <tr>
                        <td>Ticket Id</td>
                        <td><input type="text" name="id" value="<%=itr.next()%>" readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td>Take off Airport</td>
                        <td><input type="text" name="to" value="<%=itr.next()%>" readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td>Takeoff time</td>
                        <td><input type="text" name="takeoftime" value="<%=itr.next()%>" readonly="readonly"/></td>
                    </tr>
                    <tr>
                        <td>Takeoff Date</td>
                        <td><input type="text" name="takeofdate" value="<%=itr.next()%>" readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td>Landing Airport</td>
                        <td><input type="text" name="landingairport" value="<%=itr.next()%>" readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td>Land Time</td>
                        <td><input type="text" name="ladtime" value="<%=itr.next()%>" readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td>Land Date</td>
                        <td><input type="text" name="landdate" value="<%=itr.next()%>" readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td>Gate</td>
                        <td><input type="text" name="gate" value="<%=itr.next()%>" readonly="readonly" /></td>
                    </tr>
                    <tr>
                        <td>Cost</td>
                        <td><input type="text" name="cost" value="<%=itr.next()%>" readonly="readonly" /></td>
                    </tr>

                    <tr>
                        <td>Class</td>
                        <td><select name="class" required>
                                <option value="<%=itr.next()%>"><%=itr.next()%></option>
                                <option value="101">1st class</option>
                                <option value="102">Business</option>
                                <option value="103">Economy</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Seat</td>
                        <td><select name="seatNumber" required>
                                <option value="<%=itr.next()%>"><%=itr.next()%></option>
                                <option value="1">1A</option>
                                <option value="2">B1</option>
                                <option value="3">C1</option>
                            </select></td>
                    </tr>
                    <%}
                                    }%>
                    <tr>
                        <td>Number of seats</td>
                        <td><input type="text" placeholder="Enter" name="seats" value="" size="3" required/></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Cancel" /></td>
                        <td><input type="submit" value="Update Reservation" /></td>
                    </tr>

                </tbody>

            </table>

        </form>
    </body>
</html>
