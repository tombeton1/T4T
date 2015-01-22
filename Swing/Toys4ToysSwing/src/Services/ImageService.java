/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import java.awt.Image;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;

/**
 *
 * @author Tom
 */
public class ImageService {

    Connection conn;
    Statement st;
    ResultSet rs;
    String foto;
    PreparedStatement ps;
    int id;
    String sql;
    Image image;
    FileInputStream fins;
    File f;

    private Connection Verbinding() {
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/toys4toysdb", "root", "usbw");
        } catch (SQLException ex) {
            Logger.getLogger(ImageService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }

    public Image getFotoBoek(int id) {
        try {
            conn = Verbinding();
            sql = "select b.boekenFoto from Boeken b where b.id =" + id + "";
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                image = ImageIO.read(rs.getBinaryStream("boekenFoto"));

            }
        } catch (SQLException ex) {
            Logger.getLogger(ImageService.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ImageService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return image;
    }

    public Image getFotoBaby(int id) {
        try {
            conn = Verbinding();
            sql = "select ba.babyspullenFoto from BabySpullen ba where ba.id =" + id + "";
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                image = ImageIO.read(rs.getBinaryStream("babyspullenFoto"));

            }
        } catch (SQLException ex) {
            Logger.getLogger(ImageService.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ImageService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return image;
    }

    public Image getFotoKleren(int id) {
        try {
            conn = Verbinding();
            sql = "select k.klerenFoto from Kleren k where k.id =" + id + "";
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                image = ImageIO.read(rs.getBinaryStream("klerenFoto"));

            }
        } catch (SQLException ex) {
            Logger.getLogger(ImageService.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ImageService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return image;

    }

    public Image getFotoSpeel(int id) {
        try {
            conn = Verbinding();
            sql = "select s.speelgoedFoto from Speelgoed s where s.id =" + id + "";
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                image = ImageIO.read(rs.getBinaryStream("speelgoedFoto"));

            }
        } catch (SQLException ex) {
            Logger.getLogger(ImageService.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ImageService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return image;
    }

    public String FotoBoekToDB(String file, int id) throws SQLException, FileNotFoundException {
        f = new File(file);
        fins = new FileInputStream(f);
        conn = Verbinding();
        sql = "update Boeken set BoekenFoto=? where id =" + id + "";
        ps = conn.prepareStatement(sql);
        ps.setBinaryStream(1, fins);
        ps.execute();
        return file;
    }
    public String FotoBabyToDB(String file, int id) throws SQLException, FileNotFoundException {
        f = new File(file);
        fins = new FileInputStream(f);
        conn = Verbinding();
        sql = "update BabySpullen set BabyspullenFoto=? where id =" + id + "";
        ps = conn.prepareStatement(sql);
        ps.setBinaryStream(1, fins);
        ps.execute();
        return file;
    }
     public String FotoKlerenToDB(String file, int id) throws SQLException, FileNotFoundException {
        f = new File(file);
        fins = new FileInputStream(f);
        conn = Verbinding();
        sql = "update Kleren set BabyspullenFoto=? where id =" + id + "";
        ps = conn.prepareStatement(sql);
        ps.setBinaryStream(1, fins);
        ps.execute();
        return file;
    }
     public String FotoSpeelToDB(String file, int id) throws SQLException, FileNotFoundException {
        f = new File(file);
        fins = new FileInputStream(f);
        conn = Verbinding();
        sql = "update Speelgoed set SpeelgoedFoto=? where id =" + id + "";
        ps = conn.prepareStatement(sql);
        ps.setBinaryStream(1, fins);
        ps.execute();
        return file;
    }
}
