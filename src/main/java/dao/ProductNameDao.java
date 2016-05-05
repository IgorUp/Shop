package dao;

import domain.Manufacturer;
import domain.ProductName;

import java.util.List;

/**
 * Created by Igoryan on 05.05.2016.
 */
public interface ProductNameDao {

    void add(ProductName productName);

    void upd(ProductName productName);

    void delete(Integer productName_id);

    ProductName get(Integer productName_id);

    List<ProductName> listProductName();

}
