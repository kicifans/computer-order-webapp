package com.krists.orderwebapp.service;

import com.krists.orderwebapp.dao.OrderDAO;
import com.krists.orderwebapp.entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

@Service
public class OrderImpl implements OrderService{

    @Autowired
    private OrderDAO orderDAO;

    //adding creation date to new Order and passing it to orderDAO to save new order
    //if date field is not empty, dont update field, pass it to orderDAO for update
    @Override
    @Transactional
    public void saveOrder(Order order) {
        if(order.getDate() == null){
            java.util.Date date = new Date();
            java.sql.Timestamp timestamp = new java.sql.Timestamp(date.getTime());
            order.setDate(timestamp);
        }
        orderDAO.saveOrder(order);
    }

    @Override
    @Transactional
    public List<Order> getOrders() {
        return orderDAO.getOrders();
    }

    @Override
    @Transactional
    public Order getOrder(int id) {
        return orderDAO.getOrder(id);
    }

    @Transactional
    @Override
    public void deleteOrder(int id) {
        orderDAO.deleteOrder(id);
    }

    //changing order status to "REJECTED" and updating order in table
    //if status is already "REJECTED" , do nothing
    @Transactional
    @Override
    public void setStatusRejected(int id) {
        Order order = orderDAO.getOrder(id);
        if (!order.getStatus().equals("REJECTED")) {
            order.setStatus("REJECTED");
            orderDAO.saveOrder(order);
        }

    }

    //changing order status to "ACCEPTED" and updating order in table
    //if status is already "ACCEPTED" , do nothing
    @Transactional
    @Override
    public void setStatusAccepted(int id) {
        Order order = orderDAO.getOrder(id);
        if(!order.getStatus().equals("ACCEPTED")){
            order.setStatus("ACCEPTED");
            orderDAO.saveOrder(order);
        }

    }
}
