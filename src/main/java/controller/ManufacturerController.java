package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dao.ManufacturerDao;
import dao.UserDao;
import domain.Manufacturer;
import domain.Order;
import domain.Ups;
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
import service.OrderService;

/**
 * Created by Igor on 13.04.2016.
 */
@Controller
public class ManufacturerController {

//    @Autowired
//    private ManufacturerService manufacturerService;
        @Autowired
        private ManufacturerDao manufacturerDao;

    @RequestMapping(value="/homeManufacturer")
    @ResponseBody
    public ModelAndView listManufacturer(ModelAndView model) throws IOException {
        List<Manufacturer> listManufacturers = manufacturerDao.listManufacturers();
        model.addObject("listManufacturer", listManufacturers);
        model.setViewName("homeManufacturer");

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

    @RequestMapping(value = "/newManufacturer2", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView newManufacturer2(ModelAndView model) {
        Manufacturer manufacturer = new Manufacturer();
        model.addObject("manufacturer", manufacturer);
        model.setViewName("ManufacturerForm2");
        return model;
    }

    @RequestMapping(value = "/saveManufacturer", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView saveManufacturer(@ModelAttribute Manufacturer manufacturer) {
        manufacturerDao.addOrUpdate(manufacturer);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/saveManufacturer2", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView saveManufacturer2(@ModelAttribute Manufacturer manufacturer) {
        manufacturerDao.upd(manufacturer);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/deleteManufacturer", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView deleteManufacturer(HttpServletRequest request) {
        int manufacturer_id = Integer.parseInt(request.getParameter("id_manufacturer"));
        manufacturerDao.delete(manufacturer_id);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/editManufacturer", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView editManufacturer(HttpServletRequest request) {
        int manufacturer_id = Integer.parseInt(request.getParameter("id_manufacturer"));
        Manufacturer manufacturer = manufacturerDao.get(manufacturer_id);
        ModelAndView model = new ModelAndView("ManufacturerForm");
        model.addObject("manufacturer", manufacturer);
        return model;
    }

    @RequestMapping(value="/catalog_acses")
    @ResponseBody
    public ModelAndView listTest(ModelAndView model) throws IOException {
        List<Ups> listTest = manufacturerDao.listTest();
        model.addObject("listTest", listTest);
        model.setViewName("catalog_acses");
        return model;
    }
    @RequestMapping(value="/catalog_comp")
    @ResponseBody
    public ModelAndView listComp(ModelAndView model) throws IOException {
        List<Ups> listTest = manufacturerDao.listComp();
        model.addObject("listTest", listTest);
        model.setViewName("catalog_comp");
        return model;
    }
    @RequestMapping(value="/catalog_photo_video")
    @ResponseBody
    public ModelAndView listPhotoVideo(ModelAndView model) throws IOException {
        List<Ups> listTest = manufacturerDao.listPfotoVideo();
        model.addObject("listTest", listTest);
        model.setViewName("catalog_photo_video");
        return model;
    }
    @RequestMapping(value="/catalog_tel")
    @ResponseBody
    public ModelAndView listTel(ModelAndView model) throws IOException {
        List<Ups> listTest = manufacturerDao.listTel();
        model.addObject("listTest", listTest);
        model.setViewName("catalog_tel");
        return model;
    }
    @RequestMapping(value="/catalog_TV")
    @ResponseBody
    public ModelAndView listTV(ModelAndView model) throws IOException {
        List<Ups> listTest = manufacturerDao.listTV();
        model.addObject("listTest", listTest);
        model.setViewName("catalog_TV");
        return model;
    }

    @RequestMapping(value="/shopping-cart")
    @ResponseBody
    public ModelAndView shopping(HttpServletRequest request) throws IOException {
        int manufacturer_id = Integer.parseInt(request.getParameter("id_manufacturer"));
        Manufacturer manufacturer = manufacturerDao.get(manufacturer_id);
        ModelAndView model = new ModelAndView("shopping-cart");
        model.addObject("manufacturer", manufacturer);
        return model;
    }
}
