package com.krists.orderwebapp.entity;

import javax.persistence.*;

//Computer entity class, mapped to `computer` table
//Contains empty constructor and setters/getters

@Entity
@Table(name = "computer")
public class Computer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "cpu")
    private String processor;

    @Column(name = "ram")
    private String ram;

    @Column(name = "hdd")
    private String hdd;

    @Column(name = "video_card")
    private String videoCard;

    public Computer() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProcessor() {
        return processor;
    }

    public void setProcessor(String processor) {
        this.processor = processor;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getHdd() {
        return hdd;
    }

    public void setHdd(String hdd) {
        this.hdd = hdd;
    }

    public String getVideoCard() {
        return videoCard;
    }

    public void setVideoCard(String videoCard) {
        this.videoCard = videoCard;
    }

}
