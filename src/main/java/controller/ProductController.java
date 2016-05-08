package controller;

import dao.ProductDao;
import domain.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.ProductService;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * Created by Igoryan on 06.05.2016.
 */
@Controller
public class ProductController {

//    @Autowired
//    private ProductService productService;

    @Autowired
    private ProductDao productDao;

    @RequestMapping(value="/homeProduct")
    @ResponseBody
    public ModelAndView listProduct(ModelAndView model) throws IOException {
        List<Product> listProduct = productDao.listProduct();
        model.addObject("listProduct", listProduct);
        model.setViewName("homeProduct");

        return model;
    }

    @RequestMapping(value = "/newProductAdd", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView newProductAdd(ModelAndView model) {
        Product product = new Product();
        model.addObject("product", product);
        model.setViewName("productFormAdd");
        return model;
    }

    @RequestMapping(value = "/newProductUpdate", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView newProductUpdate(ModelAndView model) {
        Product product = new Product();
        model.addObject("product", product);
        model.setViewName("productFormUpdate");
        return model;
    }

    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView addProduct(@ModelAttribute Product product) {
        productDao.add(product);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView updateProduct(@ModelAttribute Product product) {
        productDao.upd(product);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView deleteProduct(HttpServletRequest request) {
        int product_id = Integer.parseInt(request.getParameter("id_product"));
        productDao.delete(product_id);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/editProduct", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView editProduct(HttpServletRequest request) {
        int product_id = Integer.parseInt(request.getParameter("id_product"));
        Product product = productDao.get(product_id);
        ModelAndView model = new ModelAndView("productFormUpdate");
        model.addObject("product", product);
        return model;
    }
}