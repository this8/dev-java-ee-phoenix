/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.phoenixairline.models;

import com.phoenixairline.util.ConnectToDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author yasas
 */
public class SessionDAO {

    public void insertToDB(UserSession sesBean) {
        Connection con = ConnectToDB.createConnection();

        int user_session_id = sesBean.getUser_session_id();
        String ip_address = sesBean.getIp_address();
        String login_time = sesBean.getLogin_time();

        String query = "INSERT INTO session (user_session_id,ip_address, login_time) VALUES (?,?,?) ";
        int i = 0;
        try {

            PreparedStatement stmt = con.prepareStatement(query);

            stmt.setInt(1, user_session_id);
            stmt.setString(2, ip_address);
            stmt.setString(3, login_time);

            i = stmt.executeUpdate();
            con.close();
        } catch (SQLException e) {

        }
    }

}
