package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dao.UserDao;
import domain.User;
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

    @RequestMapping(value="/homeUser")
    @ResponseBody
    public ModelAndView listUser(ModelAndView model) throws IOException {
        List<User> listUser = userDao.listUsers();
        model.addObject("listUser", listUser);
        model.setViewName("homeUser");

        return model;
    }

    @RequestMapping(value = "/newUserUpdate", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView newUserUpdate(ModelAndView model) {
        User user = new User();
        model.addObject("user", user);
        model.setViewName("UserForm");
        return model;
    }

//    @RequestMapping(value = "/UserAdd", method = RequestMethod.GET)
//    @ResponseBody
//    public ModelAndView userAdd(ModelAndView model) {
//        User user = new User();
//        model.addObject("user", user);
//        model.setViewName("userAdd");
//        return model;
//    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView addUser(@ModelAttribute User user) {
        userDao.addOrUpdate(user);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/newUserAdd", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView newUserAdd(ModelAndView model) {
        User user = new User();
        model.addObject("user", user);
        model.setViewName("UserForm2");
        return model;
    }

//    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
//    @ResponseBody
//    public ModelAndView addUser(@ModelAttribute User user) {
//        userDao.addOrUpdate(user);
//        return new ModelAndView("redirect:/");
//    }

    @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView updateUser(@ModelAttribute User user) {
        userDao.upd(user);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView deleteUser(HttpServletRequest request) {
        String user_id = request.getParameter("username");
        userDao.delete(user_id);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/editUser", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView editUser(HttpServletRequest request) {
        String user_id = request.getParameter("username");
        User user = userDao.get(user_id);
        ModelAndView model = new ModelAndView("UserForm");
        model.addObject("user", user);
        return model;
    }

//    @RequestMapping(value="/test", method = RequestMethod.GET)
//    @ResponseBody
//    public List<User> listUser() throws Exception {
//        List<User> listUser = userDao.listUsers();
//        return listUser;
//    }
}
