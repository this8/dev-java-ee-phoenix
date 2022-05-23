<%-- 
    Document   : AllFlightDetails
    Created on : May 20, 2022, 10:10:10 AM
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
        <title>All Flight Details</title>
    </head>
    <body>
        <h1>All Flight Details</h1>

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

    </body>
</html>
