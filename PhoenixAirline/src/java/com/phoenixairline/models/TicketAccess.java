package com.phoenixairline.models;

import com.phoenixairline.util.ConnectToDB;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TicketAccess {

    Connection con = null;
    Statement statement = null;
    int i;
    ResultSet resultSet = null;
//Insert ticket details method

    public String createTicket(Ticket ticketBean) {
        //get values from ticketBean
        int userId = ticketBean.getUserId();
        int fhacId = ticketBean.getFhacId();
        String passportNumber = ticketBean.getPassportNumber();
        String bookingDate = ticketBean.getBookingDate();
        String classType = ticketBean.getClassType();
        int numberOfSeats = ticketBean.getNumberOfSeats();
        String totalPrice = "";//calculate price and enter here

        con = ConnectToDB.createConnection();
        try {
            statement = con.createStatement();
            String InsertQuery = "INSERT INTO booking (user_id,fhac_id,passport_number,booking_date,class,number_of_seats,total_price) Values ('" + userId + "','" + fhacId + "','" + passportNumber + "','" + bookingDate + "','" + classType + "','" + numberOfSeats + "','" + totalPrice + "');";
            i = statement.executeUpdate(InsertQuery);
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        if (i != 0) {
            return "Reservation details inserted successfully";
        } else {
            return "Reservation deatails not inserted";
        }
    }

//Select ticket detals method
    public List selectTicket(int currentUserId) {
        List reservationList = new ArrayList();
        //get current user id
        con = ConnectToDB.createConnection();
        try {
            statement = con.createStatement();
            resultSet = statement.executeQuery("SELECT user.first_name,flight.takeoff_airport,flight.landing_airport,flight.takeoff_date,flight.takeoff_time,flight.gate,seat.seat_name,reservation.total_price FROM ticket INNER JOIN flight ON ticket.flight_ticket=flight.id INNER JOIN seat ON ticket.seat_ticket=seat.id INNER JOIN reservation ON ticket.reservation_ticket=reservation.id INNER JOIN user ON reservation.user_reservation=user.id WHERE user.id='" + currentUserId + "';");
            while (resultSet.next()) {
                reservationList.add(resultSet.getString("user.first_name"));
                reservationList.add(resultSet.getString("flight.takeoff_airport"));
                reservationList.add(resultSet.getString("flight.landing_airport"));
                reservationList.add(resultSet.getString("flight.takeoff_date"));
                reservationList.add(resultSet.getString("flight.takeoff_time"));
                reservationList.add(resultSet.getString("flight.gate"));
                reservationList.add(resultSet.getString("seat.seat_name"));
                reservationList.add(resultSet.getString("reservation.total_price"));
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return reservationList;
    }

//update ticket details method
    public String updateTicket(Ticket ticketBean) {
        int bookingId = ticketBean.getUserId();
        int userId = ticketBean.getUserId();
        int fhacId = ticketBean.getFhacId();
        String passportNumber = ticketBean.getPassportNumber();
        String bookingDate = ticketBean.getBookingDate();
        String classType = ticketBean.getClassType();
        int numberOfSeats = ticketBean.getNumberOfSeats();
        String totalPrice = "";//calculate price and enter here

        con = ConnectToDB.createConnection();
        try {
            statement = con.createStatement();
            String updateQuery = "UPDATE INTO booking SET fhac_id='" + fhacId + "',passport_number='" + passportNumber + "',booking_date='" + bookingDate + "',class='" + classType + "',number_of_seats='" + numberOfSeats + "',total_price='" + totalPrice + "' WHERE booking_id='" + bookingId + "' AND user_id='" + userId + "' ;";
            i = statement.executeUpdate(updateQuery);
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        if (i != 0) {
            return "Reservation details inserted successfully";
        } else {
            return "Reservation deatails not inserted";
        }
    }

}
