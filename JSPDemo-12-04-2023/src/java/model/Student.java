/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Van Manh
 */
public class Student {
    private int id;
    private String name,dob;
    private boolean gender;

    public Student() {
    }

    public Student(int id, String name, String dob, boolean gender) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
    }


    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public boolean getGender() {
        return gender;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getDob() {
        return dob;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }
    
}
