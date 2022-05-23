/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.phoenixairline.models;

import com.phoenixairline.util.ConnectToDB;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dell
 */
public class FlightAccess {

    Connection con;
    Statement statement;
    int i;
    ResultSet resultSet;

    public String InsertFlightDetails(Flight flightBean) {

        String takeoff_airport = flightBean.getTakeoff_airport();
        String takeoff_time = flightBean.getTakeoff_time();
        String takeoff_date = flightBean.getTakeoff_date();
        String landing_airport = flightBean.getLanding_airport();
        String landing_time = flightBean.getLanding_time();
        String landing_date = flightBean.getLanding_date();
        String gate = flightBean.getGate();
        String cost = flightBean.getCost();
        String aircraftId = flightBean.getAircrafft_id();

        con = ConnectToDB.createConnection();

        try {
            statement = con.createStatement();
            String InsertQuery = "INSERT INTO flight (takeoff_airport,takeoff_time,takeoff_date,landing_airport,landing_time,landing_date,gate,cost,aircraft_flight) VALUES ('" + takeoff_airport + "','" + takeoff_time + "','" + takeoff_date + "','" + landing_airport + "','" + landing_time + "','" + landing_date + "','" + gate + "','" + cost + "'," + aircraftId + ");";
            System.out.println("a");
            i = statement.executeUpdate(InsertQuery);
            System.out.println("b");
        } catch (SQLException ex) {
            System.out.println(ex);
        }

        if (i != 0) {
            return "Flight details inserted successfully";
        } else {
            return "Flight deatails not inserted";
        }
    }

    public String UpdateFlightDetails(Flight flightBean) {

        int flight_id = flightBean.getFlight_id();
        String gate = flightBean.getGate();
        String takeoff_airport = flightBean.getTakeoff_airport();
        String takeoff_time = flightBean.getTakeoff_time();
        String takeoff_date = flightBean.getTakeoff_date();
        String landing_airport = flightBean.getLanding_airport();
        String landing_time = flightBean.getLanding_time();
        String landing_date = flightBean.getLanding_date();
        String aircraftId = flightBean.getAircrafft_id();

        con = ConnectToDB.createConnection();
        try {
            statement = con.createStatement();
            String updateQuery = "UPDATE flight SET gate='" + gate + "',takeoff_airport='" + takeoff_airport + "',takeoff_time='" + takeoff_time + "',takeoff_date='" + takeoff_date + "',landing_airport='" + landing_airport + "',landing_time='" + landing_time + "',landing_date='" + landing_date + "',aircraft_flight='" + aircraftId + "' WHERE flight_id=" + flight_id + ";";
            i = statement.executeUpdate(updateQuery);

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        if (i != 0) {
            return "Flight details updated successfully";
        } else {
            return "Flight details not updated";
        }
    }

    public String DeleteFlightDetails(Flight flightBean) {
        int flight_id = flightBean.getFlight_id();

        con = ConnectToDB.createConnection();
        try {
            statement = con.createStatement();
            String dltQuery = "DELETE FROM flight WHERE flight_id=" + flight_id + "; ";

            i = statement.executeUpdate(dltQuery);

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        if (i != 0) {
            return "Flight details deleted successfully";
        } else {
            return "Flight details not deleted";
        }
    }

    public List viewAllFlightDetails() {

        List flight_details = new ArrayList();
        con = ConnectToDB.createConnection();

        try {
            statement = con.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM flight;");

            while (resultSet.next()) {
                int flight_id = resultSet.getInt("id");
                String takeoff_airport = resultSet.getString("takeoff_airport");
                String takeoff_time = resultSet.getString("takeoff_time");
                String takeoff_date = resultSet.getString("takeoff_date");
                String landing_airport = resultSet.getString("landing_airport");
                String landing_time = resultSet.getString("landing_time");
                String landing_date = resultSet.getString("landing_date");
                String gate = resultSet.getString("gate");
                float cost = resultSet.getFloat("cost");
                String aircraftId = resultSet.getString("aircraft_flight");

                flight_details.add(flight_id);
                flight_details.add(takeoff_airport);
                flight_details.add(takeoff_time);
                flight_details.add(takeoff_date);
                flight_details.add(landing_airport);
                flight_details.add(landing_time);
                flight_details.add(landing_date);
                flight_details.add(gate);
                flight_details.add(cost);
                flight_details.add(aircraftId);

            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return flight_details;
    }

    public List searchData(String searchValue, String searchCategory) {
        List searchFlight_details = new ArrayList();
        con = ConnectToDB.createConnection();

        System.out.println(searchValue);
        System.out.println(searchCategory);

        //filter value accoridng to select category and 
        try {
            statement = con.createStatement();
            switch (searchCategory) {
                case "takeoff_date":
                    resultSet = statement.executeQuery("select * from flight where takeoff_date like'%" + searchValue + "%';");
                    break;
                case "landing_date":
                    resultSet = statement.executeQuery("select * from flight where landing_date like'%" + searchValue + "%';");
                    break;
                case "landing_airport":
                    resultSet = statement.executeQuery("select * from flight where landing_airport like'%" + searchValue + "%';");
                    break;
                case "takeoff_airport":
                    resultSet = statement.executeQuery("select * from flight where takeoff_airport like'%" + searchValue + "%';");
                    break;
                default:
                    break;
            }

            while (resultSet.next()) {
                int flight_id = resultSet.getInt("flight_id");
                String gate = resultSet.getString("gate");
                String takeoff_airport = resultSet.getString("takeoff_airport");
                String takeoff_time = resultSet.getString("takeoff_time");
                String takeoff_date = resultSet.getString("takeoff_date");
                String landing_airport = resultSet.getString("landing_airport");
                String landing_time = resultSet.getString("landing_time");
                String landing_date = resultSet.getString("landing_date");

                searchFlight_details.add(flight_id);
                searchFlight_details.add(gate);
                searchFlight_details.add(takeoff_airport);
                searchFlight_details.add(takeoff_time);
                searchFlight_details.add(takeoff_date);
                searchFlight_details.add(landing_airport);
                searchFlight_details.add(landing_time);
                searchFlight_details.add(landing_date);
                searchFlight_details.add("<br>");

            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return searchFlight_details;

    }
}
