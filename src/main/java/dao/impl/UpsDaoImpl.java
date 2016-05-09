package dao.impl;

import dao.UpsDao;
import domain.Ups;
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
 * Created by Igoryan on 08.05.2016.
 */
@Repository
public class UpsDaoImpl implements UpsDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public List<Ups> listTest() {
        String sql = "SELECT product.id_product, product.picture, manufacturer.manufacturer_name, product.model, product.cost\n" +
                "FROM manufacturer\n" +
                "INNER JOIN product\n" +
                "ON manufacturer.id_manufacturer = product.id_manufacturer\n" +
                "WHERE product.id_name = 6";
        List<Ups> listTest = jdbcTemplate.query(sql, new RowMapper<Ups>() {

            @Override
            public Ups mapRow(ResultSet rs, int rowNum) throws SQLException {
                Ups ups = new Ups();
                ups.setId_product(rs.getInt("id_product"));
                ups.setManufacturer_name(rs.getString("manufacturer_name"));
                ups.setPicture(rs.getString("picture"));
                ups.setModel(rs.getString("model"));
                ups.setCost(rs.getInt("cost"));
                return ups;
            }
        });
        //List<Ups> listTest = jdbcTemplate.queryForObject(sql, List.class);
        return listTest;
    }

    @Override
    public List<Ups> listComp() {
        String sql = "SELECT product.id_product,product.picture, manufacturer.manufacturer_name, product.model, product.cost\n" +
                "FROM manufacturer\n" +
                "INNER JOIN product\n" +
                "ON manufacturer.id_manufacturer = product.id_manufacturer\n" +
                "WHERE product.id_name = 1";
        List<Ups> listTest = jdbcTemplate.query(sql, new RowMapper<Ups>() {

            @Override
            public Ups mapRow(ResultSet rs, int rowNum) throws SQLException {
                Ups ups = new Ups();
                ups.setId_product(rs.getInt("id_product"));
                ups.setManufacturer_name(rs.getString("manufacturer_name"));
                ups.setPicture(rs.getString("picture"));
                ups.setModel(rs.getString("model"));
                ups.setCost(rs.getInt("cost"));
                return ups;
            }
        });
        //List<Ups> listTest = jdbcTemplate.queryForObject(sql, List.class);
        return listTest;
    }

    @Override
    public List<Ups> listPfotoVideo() {
        String sql = "SELECT product.id_product, product.picture, manufacturer.manufacturer_name, product.model, product.cost\n" +
                "FROM manufacturer\n" +
                "INNER JOIN product\n" +
                "ON manufacturer.id_manufacturer = product.id_manufacturer\n" +
                "WHERE product.id_name = 5";
        List<Ups> listTest = jdbcTemplate.query(sql, new RowMapper<Ups>() {

            @Override
            public Ups mapRow(ResultSet rs, int rowNum) throws SQLException {
                Ups ups = new Ups();
                ups.setId_product(rs.getInt("id_product"));
                ups.setManufacturer_name(rs.getString("manufacturer_name"));
                ups.setPicture(rs.getString("picture"));
                ups.setModel(rs.getString("model"));
                ups.setCost(rs.getInt("cost"));
                return ups;
            }
        });
        //List<Ups> listTest = jdbcTemplate.queryForObject(sql, List.class);
        return listTest;
    }

    @Override
    public List<Ups> listTel() {
        String sql = "SELECT product.id_product, product.picture, manufacturer.manufacturer_name, product.model, product.cost\n" +
                "FROM manufacturer\n" +
                "INNER JOIN product\n" +
                "ON manufacturer.id_manufacturer = product.id_manufacturer\n" +
                "WHERE product.id_name = 4";
        List<Ups> listTest = jdbcTemplate.query(sql, new RowMapper<Ups>() {

            @Override
            public Ups mapRow(ResultSet rs, int rowNum) throws SQLException {
                Ups ups = new Ups();
                ups.setId_product(rs.getInt("id_product"));
                ups.setManufacturer_name(rs.getString("manufacturer_name"));
                ups.setPicture(rs.getString("picture"));
                ups.setModel(rs.getString("model"));
                ups.setCost(rs.getInt("cost"));
                return ups;
            }
        });
        //List<Ups> listTest = jdbcTemplate.queryForObject(sql, List.class);
        return listTest;
    }

    @Override
    public List<Ups> listTV() {
        String sql = "SELECT product.id_product, product.picture, manufacturer.manufacturer_name, product.model, product.cost\n" +
                "FROM manufacturer\n" +
                "INNER JOIN product\n" +
                "ON manufacturer.id_manufacturer = product.id_manufacturer\n" +
                "WHERE product.id_name = 3";
        List<Ups> listTest = jdbcTemplate.query(sql, new RowMapper<Ups>() {

            @Override
            public Ups mapRow(ResultSet rs, int rowNum) throws SQLException {
                Ups ups = new Ups();
                ups.setId_product(rs.getInt("id_product"));
                ups.setManufacturer_name(rs.getString("manufacturer_name"));
                ups.setPicture(rs.getString("picture"));
                ups.setModel(rs.getString("model"));
                ups.setCost(rs.getInt("cost"));
                return ups;
            }
        });
        //List<Ups> listTest = jdbcTemplate.queryForObject(sql, List.class);
        return listTest;
    }

    @Override
    public Ups get(int product_id) {
        String sql = "SELECT product.id_product, product.picture, manufacturer.manufacturer_name, product.model, product.cost\n" +
                "FROM manufacturer\n" +
                "INNER JOIN product\n" +
                "ON manufacturer.id_manufacturer = product.id_manufacturer\n" +
                "WHERE product.id_product =" + product_id ;
        return jdbcTemplate.query(sql, new ResultSetExtractor<Ups>() {

            @Override
            public Ups extractData(ResultSet rs) throws SQLException,
                    DataAccessException {
                if (rs.next()) {
                    Ups ups = new Ups();
                    ups.setId_product(rs.getInt("id_product"));
                    ups.setManufacturer_name(rs.getString("manufacturer_name"));
                    ups.setPicture(rs.getString("picture"));
                    ups.setModel(rs.getString("model"));
                    ups.setCost(rs.getInt("cost"));
                    return ups;
                }
                return null;
            }
        });
    }

    @Override
    public void addUps(Ups ups) {
        String sql = "INSERT INTO ups VALUES (?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql,ups.getId_product(),ups.getManufacturer_name(),ups.getPicture(),
                ups.getModel(),  ups.getCost(),ups.getLogin());
    }

    @Override
    public List<Ups> listUps() {
        String sql = "SELECT * FROM ups";
        List<Ups> listUps = jdbcTemplate.query(sql, new RowMapper<Ups>() {

            @Override
            public Ups mapRow(ResultSet rs, int rowNum) throws SQLException {
                Ups ups = new Ups();
                ups.setId_product(rs.getInt("id_product"));
                ups.setManufacturer_name(rs.getString("manufacturer"));
                ups.setPicture(rs.getString("picture"));
                ups.setModel(rs.getString("model"));
                ups.setCost(rs.getInt("cost"));
                ups.setModel(rs.getString("login"));
                return ups;
            }
        });
        //List<Ups> listTest = jdbcTemplate.queryForObject(sql, List.class);
        return listUps;
    }


}
