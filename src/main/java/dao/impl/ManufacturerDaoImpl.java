package dao.impl;

import dao.ManufacturerDao;
import domain.Manufacturer;
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
}
