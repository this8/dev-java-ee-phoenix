<%-- 
    Document   : DeleteFlightJsp
    Created on : May 20, 2022, 9:20:34 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Flight Record</title>
    </head>
    <body>
        <h1>Delete Flight Record</h1>
        <div>
            <form method="post" action="DeleteFlightInfoServlet">
                Enter Flight id to delete :<input type="text" name="flightId"/><br>


                Gate No <input type="text" name="gate"/><br>
                Takeoff_airport  <input type="text" name="takeoff_airport"/><br>
                Takeoff Time  <input type="text" name="takeoff_time"/><br>
                Takeoff Date  <input type="text" name="takeoff_date"/><br>
                Landing airport  <input type="text" name="landing_airport"/><br>
                Landing Time  <input type="text" name="landing_time"/><br>
                Landing Date  <input type="text" name="landing_date"/><br>

                <input type="submit" name="DeleteFlightRecord"/>
                <input type="reset" name="Cancel"/>
            </form>
        </div>
    </body>
</html>
