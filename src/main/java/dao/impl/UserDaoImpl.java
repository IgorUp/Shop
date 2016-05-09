package dao.impl;

import dao.UserDao;
import domain.User;
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
public class UserDaoImpl implements UserDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;


    @Override
    public void addOrUpdate(User user) {


        String sql = "INSERT INTO avtoriz VALUES (?, ?, ?, ?, ?, true)";
        jdbcTemplate.update(sql,user.getUsername(),user.getPassword(),user.getName(),
                user.getSurname(),  user.getPhone_number());
//        String sql1 = "INSERT INTO user_roles (username, role)\n" +
//                "VALUES (?, 'ROLE_USER')";
//        jdbcTemplate.update(sql1,user.getUsername());
//        String sql = "INSERT INTO user (role, name, surname, password, phone_number,login)"
//                + " VALUES (?, ?, ?, ?, ?, ?)";
//        jdbcTemplate.update(sql, user.getRole(), user.getName(),
//                user.getSurname(), user.getPassword(), user.getPhone_number(), user.getLogin());
    }

    @Override
    public void upd(User user) {
        //if (user.getId_user() > 0) {
        // update
        String sql = "UPDATE avtoriz SET password=?, name=?, surname=?, "
                + " phone_number=? WHERE username=?";
        jdbcTemplate.update(sql,user.getPassword(), user.getName(),
                user.getSurname(), user.getPhone_number(),user.getUsername());
//        String sql = "UPDATE user SET role=?, name=?, surname=?, "
//                + "password=?, phone_number=?, login=? WHERE id_user=?";
//        jdbcTemplate.update(sql, user.getRole(), user.getName(),
//                user.getSurname(), user.getPassword(), user.getPhone_number(), user.getId_user(), user.getLogin());
//        } else {
//            // insert
//            String sql = "INSERT INTO user (role, name, surname, passport_id, phone_number)"
//                    + " VALUES (?, ?, ?, ?, ?)";
//            jdbcTemplate.update(sql,user.getRole(), user.getName(),
//                    user.getSurname(),user.getPassport_id(),user.getPhone_number());
//        }
    }

    @Override
    public void delete(String user_id) {
        String sql1 = "DELETE FROM user_roles WHERE username=?";
        jdbcTemplate.update(sql1, user_id);
        String sql = "DELETE FROM avtoriz WHERE username=?";
        jdbcTemplate.update(sql, user_id);
    }

    @Override
    public User get(String user_id) {
        String sql = "SELECT avtoriz.username,avtoriz.password,avtoriz.name,avtoriz.surname,avtoriz.phone_number FROM avtoriz WHERE username=" + "'" + user_id + "'";
        return jdbcTemplate.query(sql, new ResultSetExtractor<User>() {

            @Override
            public User extractData(ResultSet rs) throws SQLException,
                    DataAccessException {
                if (rs.next()) {
                    User user = new User();
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setName(rs.getString("name"));
                    user.setSurname(rs.getString("surname"));
                    user.setPhone_number(rs.getInt("phone_number"));
                    return user;
                }
                return null;
            }
        });
    }

    @Override
    public List<User> listUsers() {
        String sql = "SELECT avtoriz.username,avtoriz.password,avtoriz.name,avtoriz.surname,avtoriz.phone_number FROM avtoriz";
        List<User> listUser = jdbcTemplate.query(sql, new RowMapper<User>() {

            @Override
            public User mapRow(ResultSet rs, int rowNum) throws SQLException {
                User user = new User();

                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setSurname(rs.getString("surname"));
                user.setPhone_number(rs.getInt("phone_number"));

                return user;
            }

        });

        return listUser;
    }

}