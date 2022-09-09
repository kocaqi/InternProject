package com.localweb.thelogin.thelogin.service;

import com.localweb.thelogin.thelogin.dao.OrderRepository;
import com.localweb.thelogin.thelogin.entities.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {

    @Autowired
    private final OrderRepository orderRepository;


    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    public List<Order> findAll() {
        return orderRepository.findAll();
    }
}
