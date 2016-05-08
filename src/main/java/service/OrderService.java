package service;

import domain.Order;

import java.util.List;

/**
 * Created by Igoryan on 08.05.2016.
 */
public interface OrderService {

        void add(Order order);

        void upd(Order order);

        void delete(Integer order_id);

        Order get(Integer order_id);

        List<Order> listOder();

}
