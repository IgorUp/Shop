package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dao.ManufacturerDao;
import dao.UserDao;
import domain.Manufacturer;
import domain.User;
import org.springframework.asm.Attribute;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.ManufacturerService;

/**
 * Created by Igor on 13.04.2016.
 */
@Controller
public class ManufacturerController {

    @Autowired
    private ManufacturerService manufacturerService;

    @RequestMapping(value="/home2")
    @ResponseBody
    public ModelAndView listManufacturer(ModelAndView model) throws IOException {
        List<Manufacturer> listManufacturers = manufacturerService.listManufacturers();
        model.addObject("listManufacturer", listManufacturers);
        model.setViewName("home2");

        return model;
    }

    @RequestMapping(value = "/newManufacturer", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView newManufacturer(ModelAndView model) {
        Manufacturer manufacturer = new Manufacturer();
        model.addObject("manufacturer", manufacturer);
        model.setViewName("ManufacturerForm");
        return model;
    }

    @RequestMapping(value = "/saveManufacturer", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView saveManufacturer(@ModelAttribute Manufacturer manufacturer) {
        manufacturerService.addOrUpdate(manufacturer);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/deleteManufacturer", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView deleteManufacturer(HttpServletRequest request) {
        int manufacturer_id = Integer.parseInt(request.getParameter("id_manufacturer"));
        manufacturerService.delete(manufacturer_id);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/editManufacturer", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView editManufacturer(HttpServletRequest request) {
        int manufacturer_id = Integer.parseInt(request.getParameter("id_manufacturer"));
        Manufacturer manufacturer = manufacturerService.get(manufacturer_id);
        ModelAndView model = new ModelAndView("ManufacturerForm");
        model.addObject("manufacturer", manufacturer);
        return model;
    }
}
