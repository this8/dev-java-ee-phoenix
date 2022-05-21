<%-- 
    Document   : ViewFlightDetails
    Created on : May 20, 2022, 9:51:35 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flight Details</title>
    </head>
    <body>
        <h1>View Flight Details</h1>
        <div>
            <form method="post" action="ViewFlightInfoServlet">
                <input type="submit" value="ViewFlight"/>
                <input type="reset" value="Cancel"/>
            </form>
        </div>

    </body>
</html>
