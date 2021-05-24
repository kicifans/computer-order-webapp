package com.krists.orderwebapp.controller;

import com.krists.orderwebapp.entity.Order;
import com.krists.orderwebapp.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/computer-order")
public class WebAppController {

    @Autowired
    OrderService orderService;

    //retrieves all orders from DB and shows in order-list
    @GetMapping("/order-list")
    public String showOrderList(Model model){

        List<Order> orders = orderService.getOrders();
        model.addAttribute("orders", orders);

        return "order-list";

    }

    //shows form to make new order
    @GetMapping("/order-form")
    public String showOrderForm(Model model){

        Order order = new Order();
        model.addAttribute("order", order);


        return "order-form";
    }

    //saves order to database and returns list with all orders
    @PostMapping("/save-order")
    public String showOrders(@ModelAttribute("orders") Order order) {

        orderService.saveOrder(order);
        return "redirect:/computer-order/order-list";

    }

    //changes Order status to "ACCEPTED"
    @GetMapping("/accept-order")
    public String acceptStatus(@RequestParam("orderId") int id) {

        orderService.setStatusAccepted(id);

        return "redirect:/computer-order/order-list";

    }

    //changes Order status to "REJECTED"
    @GetMapping("/reject-order")
    public String rejectStatus(@RequestParam("orderId") int id) {

        orderService.setStatusRejected(id);

        return "redirect:/computer-order/order-list";

    }

    //Deletes order from Database
    @GetMapping("/delete-order")
    public String deleteCustomer(@RequestParam("orderId") int id) {

        orderService.deleteOrder(id);

        return "redirect:/computer-order/order-list";

    }
}

