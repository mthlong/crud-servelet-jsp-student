/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DbContext;
import entity.LoginModel;
import entity.Student;
import java.sql.*;
import java.util.*;

/**
 *
 * @author THANHDAT-PC
 */
public class StudentDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Student> getAllStudent() {
        List<Student> list = new ArrayList<Student>();
        String query = "select * from Student";

        try {
            conn = new DbContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Student(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4)));
            }

        } catch (Exception e) {
            // TODO: handle exception
        }

        return list;
    }

    public void DeleteStudent(String id) {
        try {
            String query = "delete from Student where StudentID = ?";
            conn = new DbContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void InsertStudent(String name, String gender, String DOB) {
        String query = "insert into Student (name, gender, dob) values (?,?,?)";
        try {
            conn = new DbContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, gender);
            ps.setString(3, DOB);

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Lỗi" + e);
        }
    }

    public Student GetByID(String ID) {
        String query = "select * from Student where StudentID = ?";

        try {
            conn = new DbContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, ID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Student(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4));
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }

    public void UpdateStudent(String name, String gender, String DOB, String ID) {
        String query = "update Student set name = ?, gender = ?, dob = ? where StudentID = ?";
        try {
            conn = new DbContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, gender);
            ps.setString(3, DOB);
            ps.setString(4, ID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public LoginModel LoginStudent(String username, String password) {
        String query = "select * from Student where username = ? and passuser = ?";
        try {
            conn = new DbContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {                
                LoginModel login = new LoginModel(rs.getString(1), rs.getString(2));
                return login;
            }
        } catch (Exception e) {
        }
        return null;
    }
}
