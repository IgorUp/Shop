package dao.impl;

import dao.OrderDao;
import domain.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.swing.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Igoryan on 05.05.2016.
 */
@Repository
public class OrderDaoImpl implements OrderDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public void add(Order order) {
        String sql = "INSERT INTO `order` (id_product,id_user,number_of_product)"
                + " VALUES (?,?,?)";
        jdbcTemplate.update(sql,order.getId_product(),order.getId_user(),order.getNumber_of_product());
    }

    @Override
    public void upd(Order order) {
        String sql = "UPDATE `order` SET id_product=?, id_user=?, number_of_product=? WHERE id_order=?";
        jdbcTemplate.update(sql, order.getId_product(), order.getId_user(), order.getNumber_of_product(), order.getId_order());
    }

    @Override
    public void delete(Integer order_id) {
        String sql = "DELETE FROM `order` WHERE id_order=?";
        jdbcTemplate.update(sql, order_id);
    }

    @Override
    public Order get(Integer order_id) {
        String sql = "SELECT * FROM `order` WHERE id_order=" + order_id;
        return jdbcTemplate.query(sql, new ResultSetExtractor<Order>() {

            @Override
            public Order extractData(ResultSet rs) throws SQLException,
                    DataAccessException {
                if (rs.next()) {
                    Order order = new Order();
                    order.setId_order(rs.getInt("id_order"));
                    order.setId_product(rs.getInt("id_product"));
                    order.setId_user(rs.getInt("id_user"));
                    order.setNumber_of_product(rs.getInt("number_of_product"));
                    return order;
                }
                return null;
            }
        });
    }

    @Override
    public List<Order> listOrder() {
        String sql = "SELECT * FROM `order`";
        List<Order> listOrder = jdbcTemplate.query(sql, new RowMapper<Order>() {

            @Override
            public Order mapRow(ResultSet rs, int rowNum) throws SQLException {
                Order order = new Order();

                order.setId_order(rs.getInt("id_order"));
                order.setId_product(rs.getInt("id_product"));
                order.setId_user(rs.getInt("id_user"));
                order.setNumber_of_product(rs.getInt("number_of_product"));
                return order;
            }
        });
        return listOrder;
    }
    }
