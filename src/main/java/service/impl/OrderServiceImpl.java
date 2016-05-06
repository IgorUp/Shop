package service.impl;

import dao.OrderDao;
import domain.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.OrderService;

import java.util.List;

/**
 * Created by Igoryan on 05.05.2016.
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderDao orderDao;

    @Override
    public void add(Order order) {
        orderDao.add(order);
    }

    @Override
    public void upd(Order order) {
        orderDao.upd(order);
    }

    @Override
    public void delete(Integer order_id) {
        orderDao.delete(order_id);
    }

    @Override
    public Order get(Integer order_id) {
        return orderDao.get(order_id);
    }

    @Override
    public List<Order> listOrder() {
        return orderDao.listOrder();
    }
}
