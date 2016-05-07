package controller;

import dao.UserDao;
import domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Created by Igoryan on 07.05.2016.
 */
@Controller
public class AutorizController {

    @Autowired
    private UserDao userDao;

    @RequestMapping(value = "/index2")
    @ResponseBody
    public ModelAndView view(HttpServletRequest request) throws IOException {
        int user_id = Integer.parseInt(request.getParameter("id_user"));
        User user = userDao.get(user_id);
        ModelAndView model = new ModelAndView("index2");
        model.addObject("user", user);
        return model;
    }



}