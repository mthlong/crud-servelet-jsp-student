/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import dao.StudentDAO;
import entity.Student;
import java.util.List;

/**
 *
 * @author THANHDAT-PC
 */
public class Test {
    public static void main(String[] args) {
        StudentDAO dao = new StudentDAO();
//        List<Student> student = dao.getAllStudent();
//        for (Student o : student) {
//            System.out.println(o.getFullName());
//        }
        
        Student s = dao.GetByID("1");
        System.out.println(s.getFullName());
    }
    
}
