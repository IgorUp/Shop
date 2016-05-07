package dao.impl;

import dao.ManufacturerDao;
import domain.Manufacturer;
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
 * Created by Igor on 13.04.2016.
 */
@Repository
public class ManufacturerDaoImpl implements ManufacturerDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void upd(Manufacturer manufacturer) {
        String sql = "UPDATE manufacturer SET manufacturer_name=? WHERE id_manufacturer=?";
            jdbcTemplate.update(sql, manufacturer.getManufacturer_name(), manufacturer.getId_manufacturer());
    }

    @Override
    public void addOrUpdate(Manufacturer manufacturer) {
//        if (manufacturer.getId_manufacturer() > 0) {
//            // update
//            String sql = "UPDATE manufacturer SET manufacturer_name=? WHERE id_manufacturer=?";
//            jdbcTemplate.update(sql, manufacturer.getManufacturer_name(), manufacturer.getId_manufacturer());
//        } else {
            // insert
            String sql = "INSERT INTO manufacturer (manufacturer_name)"
                    + " VALUES (?)";
            jdbcTemplate.update(sql,manufacturer.getManufacturer_name());
       // }
    }

    @Override
    public void delete(Integer manufacturer_id) {
        String sql = "DELETE FROM manufacturer WHERE id_manufacturer=?";
        jdbcTemplate.update(sql, manufacturer_id);
    }

    @Override
    public Manufacturer get(Integer manufacturer_id) {
        String sql = "SELECT * FROM manufacturer WHERE id_manufacturer=" + manufacturer_id;
        return jdbcTemplate.query(sql, new ResultSetExtractor<Manufacturer>() {

            @Override
            public Manufacturer extractData(ResultSet rs) throws SQLException,
                    DataAccessException {
                if (rs.next()) {
                    Manufacturer manufacturer = new Manufacturer();
                    manufacturer.setId_manufacturer(rs.getInt("id_manufacturer"));
                    manufacturer.setManufacturer_name(rs.getString("manufacturer_name"));
                    return manufacturer;
                }
                return null;
            }
        });
    }

    @Override
    public List<Manufacturer> listManufacturers() {
        String sql = "SELECT * FROM manufacturer";
        List<Manufacturer> listManufacturer = jdbcTemplate.query(sql, new RowMapper<Manufacturer>() {

            @Override
            public Manufacturer mapRow(ResultSet rs, int rowNum) throws SQLException {
                Manufacturer manufacturer = new Manufacturer();

                manufacturer.setId_manufacturer(rs.getInt("id_manufacturer"));
                manufacturer.setManufacturer_name(rs.getString("manufacturer_name"));
                return manufacturer;
            }
        });
        return listManufacturer;
    }

    @Override
    public List<Ups> listTest() {
        String sql = "SELECT product.picture, manufacturer.manufacturer_name, product.model, product.cost\n" +
                "FROM manufacturer\n" +
                "INNER JOIN product\n" +
                "ON manufacturer.id_manufacturer = product.id_manufacturer\n" +
                "WHERE product.id_name = 6;";
        List<Ups> listTest = jdbcTemplate.query(sql, new RowMapper<Ups>() {

            @Override
            public Ups mapRow(ResultSet rs, int rowNum) throws SQLException {
                Ups ups = new Ups();
                //ups.setId_manufacturer(rs.getInt("id_manufacturer"));
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
        String sql = "SELECT product.picture, manufacturer.manufacturer_name, product.model, product.cost\n" +
                "FROM manufacturer\n" +
                "INNER JOIN product\n" +
                "ON manufacturer.id_manufacturer = product.id_manufacturer\n" +
                "WHERE product.id_name = 1;";
        List<Ups> listTest = jdbcTemplate.query(sql, new RowMapper<Ups>() {

            @Override
            public Ups mapRow(ResultSet rs, int rowNum) throws SQLException {
                Ups ups = new Ups();
                //ups.setId_manufacturer(rs.getInt("id_manufacturer"));
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
        String sql = "SELECT product.picture, manufacturer.manufacturer_name, product.model, product.cost\n" +
                "FROM manufacturer\n" +
                "INNER JOIN product\n" +
                "ON manufacturer.id_manufacturer = product.id_manufacturer\n" +
                "WHERE product.id_name = 5;";
        List<Ups> listTest = jdbcTemplate.query(sql, new RowMapper<Ups>() {

            @Override
            public Ups mapRow(ResultSet rs, int rowNum) throws SQLException {
                Ups ups = new Ups();
                //ups.setId_manufacturer(rs.getInt("id_manufacturer"));
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
        String sql = "SELECT product.picture, manufacturer.manufacturer_name, product.model, product.cost\n" +
                "FROM manufacturer\n" +
                "INNER JOIN product\n" +
                "ON manufacturer.id_manufacturer = product.id_manufacturer\n" +
                "WHERE product.id_name = 4;";
        List<Ups> listTest = jdbcTemplate.query(sql, new RowMapper<Ups>() {

            @Override
            public Ups mapRow(ResultSet rs, int rowNum) throws SQLException {
                Ups ups = new Ups();
                //ups.setId_manufacturer(rs.getInt("id_manufacturer"));
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
        String sql = "SELECT product.picture, manufacturer.manufacturer_name, product.model, product.cost\n" +
                "FROM manufacturer\n" +
                "INNER JOIN product\n" +
                "ON manufacturer.id_manufacturer = product.id_manufacturer\n" +
                "WHERE product.id_name = 3;";
        List<Ups> listTest = jdbcTemplate.query(sql, new RowMapper<Ups>() {

            @Override
            public Ups mapRow(ResultSet rs, int rowNum) throws SQLException {
                Ups ups = new Ups();
                //ups.setId_manufacturer(rs.getInt("id_manufacturer"));
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
}
