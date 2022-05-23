<%-- 
    Document   : ResultsSearchFlights
    Created on : May 20, 2022, 11:55:58 AM
    Author     : dell
--%>


<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Searched values</title>
    </head>
    <body>
        <h1>Searched Results</h1>
        <table border="1">
            <thead>
            </thead>
            <tbody>
                <%
                    if ((request.getAttribute("result") != null)) {
                        List data = new ArrayList();
                        data = (List) request.getAttribute("result");
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
                    <td><%=itr.next()%></td>
                    <td><%=itr.next()%></td>
                </tr>
                <%}
                    }%>
            </tbody>
        </table>
        <form action="CreateTicketServlet" method="POST">
            <table border="1">
                <tbody>
                    <tr>
                        <td>TO</td>
                        <td><input type="text" name="to" value="" required/></td>
                    </tr>
                    <tr>
                        <td>From</td>
                        <td><input type="text" name="from" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Passport Number</td>
                        <td><input type="text" name="passport" value="" /></td>
                    </tr>
                    <tr>
                        <td>Date</td>
                        <td><input type="text" name="date" value="" /></td>
                    </tr>
                    <tr>
                        <td>Aircraft Id</td>
                        <td><input type="text" name="aircraftNumber" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Class</td>
                        <td><select name="class" required>
                                <option value="business">Business</option>
                                <option value="economy">Economy</option>
                                <option value="1st class">1st class</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Number of seats</td>
                        <td><input type="number" name="seats" value="" size="3" /></td>
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
