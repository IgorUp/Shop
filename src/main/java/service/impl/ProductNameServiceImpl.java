package service.impl;

import dao.ProductNameDao;
import domain.ProductName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.ProductNameService;

import java.util.List;

/**
 * Created by Igoryan on 05.05.2016.
 */
@Service
public class ProductNameServiceImpl implements ProductNameService {

    @Autowired
    ProductNameDao productNameDao;

    @Override
    public void add(ProductName productName) {
        productNameDao.add(productName);
    }

    @Override
    public void upd(ProductName productName) {
        productNameDao.upd(productName);
    }

    @Override
    public void delete(Integer productName_id) {
        productNameDao.delete(productName_id);
    }

    @Override
    public ProductName get(Integer productName_id) {
        return productNameDao.get(productName_id);
    }

    @Override
    public List<ProductName> listProductName() {
        return productNameDao.listProductName();
    }
}
