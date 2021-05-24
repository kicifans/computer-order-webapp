package com.krists.orderwebapp.service;

import com.krists.orderwebapp.entity.Order;

import java.util.List;

public interface OrderService {

    void saveOrder(Order order);

    List<Order> getOrders();

    public Order getOrder(int id);

    void deleteOrder(int id);

    void setStatusRejected(int id);

    void setStatusAccepted(int id);
}
