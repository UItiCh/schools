package com.ecut.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    private String studentId;
    private String studentName;
    private String studentGender;
    private String studentPassword;
    private String studentPhone;
    private String studentClassId;
    private String studentEmail;
    private String studentAddress;
    private final Integer studentPower=3;
    private List<Course> courses;



    public String getStudentId() {
        return studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public String getStudentGender() {
        return studentGender;
    }

    public String getStudentPassword() {
        return studentPassword;
    }

    public String getStudentPhone() {
        return studentPhone;
    }

    public String getStudentClassId() {
        return studentClassId;
    }

    public String getStudentEmail() {
        return studentEmail;
    }

    public String getStudentAddress() {
        return studentAddress;
    }

    public Integer getStudentPower() {
        return studentPower;
    }

    public List<Course> getCourses() {
        return courses;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public void setStudentGender(String studentGender) {
        this.studentGender = studentGender;
    }

    public void setStudentPassword(String studentPassword) {
        this.studentPassword = studentPassword;
    }

    public void setStudentPhone(String studentPhone) {
        this.studentPhone = studentPhone;
    }

    public void setStudentClassId(String studentClassId) {
        this.studentClassId = studentClassId;
    }

    public void setStudentEmail(String studentEmail) {
        this.studentEmail = studentEmail;
    }

    public void setStudentAddress(String studentAddress) {
        this.studentAddress = studentAddress;
    }

    public void setCourses(List<Course> courses) {
        this.courses = courses;
    }
}
