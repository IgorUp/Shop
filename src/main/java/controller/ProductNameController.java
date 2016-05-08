package controller;

        import java.io.IOException;
        import java.util.List;

        import javax.servlet.http.HttpServletRequest;

        import dao.ManufacturerDao;
        import dao.ProductNameDao;
        import dao.UserDao;
        import domain.Manufacturer;
        import domain.ProductName;
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
        import service.ProductNameService;

/**
 * Created by Igor on 13.04.2016.
 */
@Controller
public class ProductNameController {

//    @Autowired
//    private ProductNameService productNameService;

    @Autowired
    private ProductNameDao productNameDao;

    @RequestMapping(value="/homeProductName")
    @ResponseBody
    public ModelAndView listProductname(ModelAndView model) throws IOException {
        List<ProductName> listProductName = productNameDao.listProductName();
        model.addObject("listProductName", listProductName);
        model.setViewName("homeProductName");

        return model;
    }

    @RequestMapping(value = "/newProductNameAdd", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView newProductNameAdd(ModelAndView model) {
        ProductName product_Name = new ProductName();
        model.addObject("product_name", product_Name);
        model.setViewName("productNameFormAdd");
        return model;
    }

    @RequestMapping(value = "/newProductNameUpdate", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView newProductNameUpdate(ModelAndView model) {
        ProductName product_Name = new ProductName();
        model.addObject("product_name", product_Name);
        model.setViewName("productNameFormUpdate");
        return model;
    }

    @RequestMapping(value = "/addProductName", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView addProductName(@ModelAttribute ProductName productName) {
        productNameDao.add(productName);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/updateProductName", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView updateProductName(@ModelAttribute ProductName productName) {
        productNameDao.upd(productName);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/deleteProductName", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView deleteProductName(HttpServletRequest request) {
        int productName_id = Integer.parseInt(request.getParameter("id"));
        productNameDao.delete(productName_id);
        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value = "/editProductName", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView editProductName(HttpServletRequest request) {
        int productName_id = Integer.parseInt(request.getParameter("id"));
        ProductName product_Name = productNameDao.get(productName_id);
        ModelAndView model = new ModelAndView("productNameFormUpdate");
        model.addObject("product_name", product_Name);
        return model;
    }
}
