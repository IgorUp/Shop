package dao;

import domain.Product;
import domain.ProductName;

import java.util.List;

/**
 * Created by Igoryan on 05.05.2016.
 */
public interface ProductDao {

    void add(Product product);

    void upd(Product product);

    void delete(Integer product_id);

    Product get(Integer product_id);

    List<Product> listProduct();

}
