package service.impl;

import dao.ProductDao;
import domain.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.ProductService;

import java.util.List;

/**
 * Created by Igoryan on 06.05.2016.
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductDao productDao;

    @Override
    public void add(Product product) {
        productDao.add(product);
    }

    @Override
    public void upd(Product product) {
        productDao.upd(product);
    }

    @Override
    public void delete(Integer product_id) {
        productDao.delete(product_id);
    }

    @Override
    public Product get(Integer product_id) {
        return productDao.get(product_id);
    }

    @Override
    public List<Product> listProduct() {
        return productDao.listProduct();
    }
}
