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
    private String name;
    private boolean gender;
    private int mark;

    public Student() {
    }

    public Student(int id, String name, boolean gender, int mark) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.mark = mark;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public boolean isGender() {
        return gender;
    }

    public int getMark() {
        return mark;
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

    public void setMark(int mark) {
        this.mark = mark;
    }
    public  String toString(){
        return id+" "+name+" "+(gender?"male":"female")+" "+mark;
    }
    
}
