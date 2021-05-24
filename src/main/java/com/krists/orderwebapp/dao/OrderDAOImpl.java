package com.krists.orderwebapp.dao;

import com.krists.orderwebapp.entity.Order;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.query.Query;

import java.util.List;

//OrderDAO implementation class
@Repository
public class OrderDAOImpl implements OrderDAO{

    @Autowired
    private SessionFactory sessionFactory;

    //Adding new order to database, or update existing
    @Override
    public void saveOrder(Order order) {

        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(order);
    }

    //retrieves all orders from database and returns List
    @Override
    public List<Order> getOrders() {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Order> theQuery = currentSession.createQuery("from Order order by date", Order.class);
        return theQuery.getResultList();
    }

    //retrieve order from database based on id
    @Override
    public Order getOrder(int id) {

        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(Order.class, id);

    }

    //delete order from database based on id
    @Override
    public void deleteOrder(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Order order= currentSession.get(Order.class, id);
        currentSession.delete(order);
    }
}
