/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package BookshopApplication;

/**
 *
 * @author User
 */
/*
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.sql.*;
import java.io.*;
import java.util.*;

public class JavaApplication2 {

    /**
     * @param args the command line arguments
     *//*
    public class BookShop extends JFrame{
            String username = "root";
            String pw = "";
            String sql = "jdbc:mysql://localhost:3306/mysql";
        
            private JTable bookTable;
            
            public BookShop()
            {
                
            }
    }
*/
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class  JavaApplication2{
    
    // Method to establish a connection to the MySQL database
    public static Connection getConnection() throws ClassNotFoundException {
        Connection connection = null;
        
        try {
            // Database credentials
            String username = "root"; // Replace with your MySQL username
            String password = ""; // Replace with your MySQL password
            String url = "jdbc:mysql://localhost:3306/bookdb"; // Replace "your_database" with your database name
            
           Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish the connection
            connection = DriverManager.getConnection(url, username, password);
            JOptionPane.showMessageDialog(null, "Connection Successful");
            
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Connection Failed: " + e.getMessage());
        }
        
        return connection;
    }
    
    public static void main(String[] args) throws ClassNotFoundException {
        // Test the connection
        Connection conn = getConnection();
        
        // Close the connection if it's successful
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

