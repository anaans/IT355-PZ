/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentabike.service.impl;

import com.rentabike.model.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rentabike.dao.OrdersDao;
import com.rentabike.service.OrdersService;

/**
 *
 * @author ana
 */
@Service
public class OrderServiceImpl implements OrdersService {

    @Autowired
    private OrdersDao orderDao;

    @Override
    public Orders addOrders(Orders orders) {
        return orderDao.addOrders(orders);
    }

}
