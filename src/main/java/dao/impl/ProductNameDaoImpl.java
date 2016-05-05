package dao.impl;

import dao.ProductNameDao;
import domain.Manufacturer;
import domain.ProductName;
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
public class ProductNameDaoImpl implements ProductNameDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public void add(ProductName productName) {
        String sql = "INSERT INTO product_name (product_name)"
                + " VALUES (?)";
        jdbcTemplate.update(sql,productName.getProduct_name());
    }

    @Override
    public void upd(ProductName productName) {
        String sql = "UPDATE product_name SET product_name=? WHERE id_name=?";
        jdbcTemplate.update(sql, productName.getProduct_name(), productName.getId());
    }

    @Override
    public void delete(Integer productName_id) {
        String sql = "DELETE FROM product_name WHERE id_name=?";
        jdbcTemplate.update(sql, productName_id);
    }

    @Override
    public ProductName get(Integer productName_id) {
        String sql = "SELECT * FROM product_name WHERE id_name=" + productName_id;
        return jdbcTemplate.query(sql, new ResultSetExtractor<ProductName>() {

            @Override
            public ProductName extractData(ResultSet rs) throws SQLException,
                    DataAccessException {
                if (rs.next()) {
                    ProductName productName = new ProductName();
                    productName.setId(rs.getInt("id_name"));
                    productName.setProduct_name(rs.getString("product_name"));
                    return productName;
                }
                return null;
            }
        });
    }

    @Override
    public List<ProductName> listProductName() {
        String sql = "SELECT * FROM product_name";
        List<ProductName> listProductName = jdbcTemplate.query(sql, new RowMapper<ProductName>() {

            @Override
            public ProductName mapRow(ResultSet rs, int rowNum) throws SQLException {
                ProductName productName = new ProductName();

                productName.setId(rs.getInt("id_name"));
                productName.setProduct_name(rs.getString("product_name"));
                return productName;
            }
        });
        return listProductName;
    }
}
