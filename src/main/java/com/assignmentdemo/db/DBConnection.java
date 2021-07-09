package com.assignmentdemo.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/JspAsm","root","anhhungvd123st");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            return conn;
        }
    }
}
