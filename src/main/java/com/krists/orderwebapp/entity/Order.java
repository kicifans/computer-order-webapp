package com.krists.orderwebapp.entity;
import javax.persistence.*;
import java.sql.Timestamp;

//Order entity class, mapped to `order` table
//Contains empty constructor and setters/getters

@Entity
@Table(name = "`order`")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "justification")
    private String justification;

    @Column(name = "date")
    private Timestamp date;

    @Column(name = "status")
    private String status;

    //maps computer column to order
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "computer_id")
    private Computer computer;

    public Order() {
        //setting default status to "PENDING" when new Order is made
        status = "PENDING";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getJustification() {
        return justification;
    }

    public void setJustification(String justification) {
        this.justification = justification;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp timeStamp) {
        this.date = timeStamp;
    }

    public Computer getComputer() {
        return computer;
    }

    public void setComputer(Computer computer) {
        this.computer = computer;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }



    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", justification='" + justification + '\'' +
                ", date='" + date + '\'' +
                ", status='" + status + '\'' +
                ", computers=" + computer +
                '}';
    }
}

