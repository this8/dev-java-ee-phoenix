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
                Input search value<input type="text" name="searchData" />
                Select option to Search data  <select name="searchCategory">
                    <option value="takeoff_date">Takeoff Date</option>
                    <option value="landing_date">Landing Date</option>
                    <option value="landing_airport">Landing Airport</option>
                </select>
                <input type="submit" name="Search"/>
                <input type="reset" name="Cancel"/>
            </form>
        </div>
    </body>
</html>
