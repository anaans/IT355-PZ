/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentabike.service.impl;

import com.rentabike.dao.OrdersDetailDao;
import com.rentabike.model.OrdersDetail;
import com.rentabike.service.OrdersDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ana
 */
@Service
public class OrdersDetailServiceImpl implements OrdersDetailService {

    @Autowired
    private OrdersDetailDao ordersDetailDao;

    @Override
    public void addOrdersDetail(OrdersDetail ordersDetail) {
        ordersDetailDao.addOrdersDetail(ordersDetail);
    }

}
