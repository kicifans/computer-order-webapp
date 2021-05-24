package com.krists.orderwebapp.dao;

import com.krists.orderwebapp.entity.Order;

import java.util.List;

//Order Data Access Object interface
public interface OrderDAO {

    void saveOrder(Order order);

    List<Order> getOrders();

    Order getOrder(int id);

    void deleteOrder(int id);
}
