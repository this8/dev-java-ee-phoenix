<%-- 
    Document   : SearchFlights
    Created on : May 20, 2022, 10:38:42 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Flight Details</title>
    </head>
    <body>
        <h1>Search Flight Details</h1>
        <div>
            <form method="post" action="SearchFlightInfoServlet">
                Select option to Search data  
                <input type="date" name="takeoff_date" value="" />
                <select name="takeoff_airport">
                    <option value="AAL">AAL</option>
                    <option value="CMB">Colombo</option>
                </select>
                <select name="landing_airport">
                    <option value="ABV">Nigeria</option>
                    <option value="CWL">Cardiff</option>
                </select>
                <input type="submit" name="Search"/>
                <input type="reset" name="Cancel"/>
            </form>
        </div>
    </body>
</html>
