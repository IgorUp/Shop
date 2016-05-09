package controller;

import dao.OrderDao;
import domain.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.OrderService;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * Created by Igoryan on 05.05.2016.
 */
@Controller
public class OrderController {

//    @Autowired
//    private OrderService orderService;

//    @Autowired
//    private OrderDao orderDao;
//
//    @RequestMapping(value="/homeOrder")
//    @ResponseBody
//    public ModelAndView listOrder(ModelAndView model) throws IOException {
//        List<Order> listOrder = orderDao.listOrder();
//        model.addObject("listOrder", listOrder);
//        model.setViewName("homeOrder");
//
//        return model;
//    }
//
//    @RequestMapping(value = "/newOrderAdd", method = RequestMethod.GET)
//    @ResponseBody
//    public ModelAndView newOrderAdd(ModelAndView model) {
//        Order order = new Order();
//        model.addObject("order", order);
//        model.setViewName("orderFormAdd");
//        return model;
//    }
//
//    @RequestMapping(value = "/newOrderUpdate", method = RequestMethod.GET)
//    @ResponseBody
//    public ModelAndView newOrderUpdate(ModelAndView model) {
//        Order order = new Order();
//        model.addObject("order", order);
//        model.setViewName("orderFormUpdate");
//        return model;
//    }
//
//    @RequestMapping(value = "/addOrder", method = RequestMethod.POST)
//    @ResponseBody
//    public ModelAndView addOrder(@ModelAttribute Order order) {
//        orderDao.add(order);
//        return new ModelAndView("redirect:/");
//    }
//
//    @RequestMapping(value = "/updateOrder", method = RequestMethod.POST)
//    @ResponseBody
//    public ModelAndView updateOrder(@ModelAttribute Order order) {
//        orderDao.upd(order);
//        return new ModelAndView("redirect:/");
//    }
//
//    @RequestMapping(value = "/deleteOrder", method = RequestMethod.GET)
//    @ResponseBody
//    public ModelAndView deleteOrder(HttpServletRequest request) {
//        int order_id = Integer.parseInt(request.getParameter("id_order"));
//        orderDao.delete(order_id);
//        return new ModelAndView("redirect:/");
//    }
//
//    @RequestMapping(value = "/editOrder", method = RequestMethod.GET)
//    @ResponseBody
//    public ModelAndView editOrder(HttpServletRequest request) {
//        int order_id = Integer.parseInt(request.getParameter("id_order"));
//        Order order = orderDao.get(order_id);
//        ModelAndView model = new ModelAndView("orderFormUpdate");
//        model.addObject("order", order);
//        return model;
//    }
}

