package com.example.entity;

public class DangAnGuiVO {
//    iArea是区号；iCol是内部列号；iMapCol是显示列号；iStatus为1:打开,0：关闭，-1：通风
    Integer iArea; //区号
    Integer iCol;    //内部列号
    Integer iMapCol;//档案架编号
    Integer iStatus; //状态
    String sStatus; //文字示意

    public Integer getiArea() {
        return iArea;
    }

    public void setiArea(Integer iArea) {
        this.iArea = iArea;
    }

    public Integer getiCol() {
        return iCol;
    }

    public void setiCol(Integer iCol) {
        this.iCol = iCol;
    }

    public Integer getiMapCol() {
        return iMapCol;
    }

    public void setiMapCol(Integer iMapCol) {
        this.iMapCol = iMapCol;
    }

    public Integer getiStatus() {
        return iStatus;
    }

    public void setiStatus(Integer iStatus) {
        this.iStatus = iStatus;
    }

    public String getsStatus() {
        return sStatus;
    }

    public void setsStatus(String sStatus) {
        this.sStatus = sStatus;
    }
}
