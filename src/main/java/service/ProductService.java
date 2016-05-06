package service;

import domain.Product;

import java.util.List;

/**
 * Created by Igoryan on 06.05.2016.
 */
public interface ProductService {

    void add(Product product);

    void upd(Product product);

    void delete(Integer product_id);

    Product get(Integer product_id);

    List<Product> listProduct();

}
