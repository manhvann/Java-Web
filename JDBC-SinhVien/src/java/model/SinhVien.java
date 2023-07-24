/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Van Manh
 */
public class SinhVien {
    /*
        MaSV nchar(10) primary key,
	TenSV nchar(30),
	Que nchar(30)
    */
    private String maSV;
    private String tenSV;
    private String que;

    public SinhVien() {
    }

    public SinhVien(String maSV, String tenSV, String que) {
        this.maSV = maSV;
        this.tenSV = tenSV;
        this.que = que;
    }

    public String getMaSV() {
        return maSV;
    }

    public String getTenSV() {
        return tenSV;
    }

    public String getQue() {
        return que;
    }

    public void setMaSV(String maSV) {
        this.maSV = maSV;
    }

    public void setTenSV(String tenSV) {
        this.tenSV = tenSV;
    }

    public void setQue(String que) {
        this.que = que;
    }
    
    
    
}
