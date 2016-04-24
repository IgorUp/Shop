package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dao.UserDao;
import domain.User;
import org.springframework.asm.Attribute;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Igor on 13.04.2016.
 */
@Controller
public class UserController {

    @Autowired
    private UserDao userDao;

    @RequestMapping(value="/home")
    @ResponseBody
    public ModelAndView listUser(ModelAndView model) throws IOException {
        List<User> listUser = userDao.listUsers();
        model.addObject("listUser", listUser);
        model.setViewName("home");

        return model;
    }

    @RequestMapping(value = "/newUser", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView newUser(ModelAndView model) {
        User user = new User();
        model.addObject("user", user);
        model.setViewName("UserForm");
        return model;
    }

    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView saveUser(@ModelAttribute User user) {
        userDao.addOrUpdate(user);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView deleteUser(HttpServletRequest request) {
        int user_id = Integer.parseInt(request.getParameter("id_user"));
        userDao.delete(user_id);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/editUser", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView editUser(HttpServletRequest request) {
        int user_id = Integer.parseInt(request.getParameter("id_user"));
        User user = userDao.get(user_id);
        ModelAndView model = new ModelAndView("UserForm");
        model.addObject("user", user);
        return model;
    }
}
