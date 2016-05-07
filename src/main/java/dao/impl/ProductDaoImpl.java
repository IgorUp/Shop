package dao.impl;

import dao.ProductDao;
import domain.Manufacturer;
import domain.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Igoryan on 05.05.2016.
 */
@Repository
public class ProductDaoImpl implements ProductDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public void add(Product product) {
            String sql = "INSERT INTO `product` (id_manufacturer, id_name, model, number, cost, picture)"
                    + " VALUES (?,?,?,?,?,?)";
            jdbcTemplate.update(sql, product.getId_manufacturer(),
                    product.getId_name(), product.getModel(),
                    product.getNumber(), product.getCost(), product.getPicture());
    }

    @Override
    public void upd(Product product) {
        String sql = "UPDATE `product` SET id_manufacturer=?, id_name=?, model=?, number=?, cost=?, picture=? WHERE id_product=?";
        jdbcTemplate.update(sql,product.getId_manufacturer(),
                product.getId_name(),product.getModel(),
                product.getNumber(),product.getCost(),product.getPicture(),product.getId_product());
    }

    @Override
    public void delete(Integer product_id) {
        String sql = "DELETE FROM `product` WHERE id_product=?";
        jdbcTemplate.update(sql, product_id);
    }

    @Override
    public Product get(Integer product_id) {
        String sql = "SELECT * FROM `product` WHERE id_product=" + product_id;
        return jdbcTemplate.query(sql, new ResultSetExtractor<Product>() {

            @Override
            public Product extractData(ResultSet rs) throws SQLException,
                    DataAccessException {
                if (rs.next()) {
                    Product product = new Product();
                    product.setId_product(rs.getInt("id_product"));
                    product.setId_manufacturer(rs.getInt("id_manufacturer"));
                    product.setId_name(rs.getInt("id_name"));
                    product.setModel(rs.getString("model"));
                    product.setNumber(rs.getInt("number"));
                    product.setCost(rs.getInt("cost"));
                    product.setPicture(rs.getString("picture"));
                    return product;
                }
                return null;
            }
        });
    }

    @Override
    public List<Product> listProduct() {
        String sql = "SELECT * FROM `product`";
        List<Product> listProduct = jdbcTemplate.query(sql, new RowMapper<Product>() {

            @Override
            public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
                Product product = new Product();
                product.setId_product(rs.getInt("id_product"));
                product.setId_manufacturer(rs.getInt("id_manufacturer"));
                product.setId_name(rs.getInt("id_name"));
                product.setModel(rs.getString("model"));
                product.setNumber(rs.getInt("number"));
                product.setCost(rs.getInt("cost"));
                product.setPicture(rs.getString("picture"));
                return product;
            }
        });
        return listProduct;
    }
}
