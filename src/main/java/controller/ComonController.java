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
}
