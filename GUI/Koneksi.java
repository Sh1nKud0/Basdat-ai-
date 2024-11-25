/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Farras Akbar
 */
import java.sql.*;
import javax.swing.JOptionPane;

public class Koneksi {
    public static Connection BukaKoneksi() {
        // URL JDBC untuk database
        String url = "jdbc:sqlserver://LAPTOP-GOR2IB58;database=basdatfinal;encrypt=false;integratedSecurity=true;";
        
        try {
            // Membuat koneksi
            Connection cn = DriverManager.getConnection(url);
            return cn;
        } catch (Exception e) {
            // Menampilkan pesan error
            JOptionPane.showMessageDialog(null, "Koneksi gagal: " + e.getMessage());
            return null;
        }
    }
}
