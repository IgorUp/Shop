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
public class ComonController {

    @RequestMapping(value="/")
    @ResponseBody
    public ModelAndView view(ModelAndView model) throws IOException {
        model.setViewName("home");
        return model;
    }
    @RequestMapping(value="/about")
    @ResponseBody
    public ModelAndView about(ModelAndView model) throws IOException {
        model.setViewName("about");
        return model;
    }
    @RequestMapping(value="/news")
    @ResponseBody
    public ModelAndView news(ModelAndView model) throws IOException {
        model.setViewName("news");
        return model;
    }
    @RequestMapping(value="/contact")
    @ResponseBody
    public ModelAndView contact(ModelAndView model) throws IOException {
        model.setViewName("contact");
        return model;
    }
    @RequestMapping(value="/delivery")
    @ResponseBody
    public ModelAndView delivery(ModelAndView model) throws IOException {
        model.setViewName("delivery");
        return model;
    }
    @RequestMapping(value="/test")
    @ResponseBody
    public ModelAndView test(ModelAndView model) throws IOException {
        model.setViewName("test");
        return model;
    }
    @RequestMapping(value="/chart")
    @ResponseBody
    public ModelAndView chart(ModelAndView model) throws IOException {
        model.setViewName("chart");
        return model;
    }
}
