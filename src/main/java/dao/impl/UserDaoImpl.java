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
        if (user.getId_user() > 0) {
            // update
            String sql = "UPDATE user SET role=?, name=?, surname=?, "
                    + "passport_id=?, phone_number=? WHERE id_user=?";
            jdbcTemplate.update(sql, user.getRole(), user.getName(),
                    user.getSurname(),user.getPassport_id(),user.getPhone_number(),user.getId_user());
        } else {
            // insert
            String sql = "INSERT INTO user (role, name, surname, passport_id, phone_number)"
                    + " VALUES (?, ?, ?, ?, ?)";
            jdbcTemplate.update(sql,user.getRole(), user.getName(),
                    user.getSurname(),user.getPassport_id(),user.getPhone_number());
        }
    }

    @Override
    public void delete(Integer user_id) {
        String sql = "DELETE FROM user WHERE id_user=?";
        jdbcTemplate.update(sql, user_id);
    }

    @Override
    public User get(Integer user_id) {
        String sql = "SELECT * FROM user WHERE id_user=" + user_id;
        return jdbcTemplate.query(sql, new ResultSetExtractor<User>() {

            @Override
            public User extractData(ResultSet rs) throws SQLException,
                    DataAccessException {
                if (rs.next()) {
                    User user = new User();
                    user.setId_user(rs.getInt("id_user"));
                    user.setRole(rs.getInt("role"));
                    user.setName(rs.getString("name"));
                    user.setSurname(rs.getString("surname"));
                    user.setPassport_id(rs.getString("passport_id"));
                    user.setPhone_number(rs.getInt("phone_number"));
                    return user;
                }
                return null;
            }
        });
    }

    @Override
    public List<User> listUsers() {
        String sql = "SELECT * FROM user";
        List<User> listUser = jdbcTemplate.query(sql, new RowMapper<User>() {

            @Override
            public User mapRow(ResultSet rs, int rowNum) throws SQLException {
                User user = new User();

                user.setId_user(rs.getInt("id_user"));
                user.setRole(rs.getInt("role"));
                user.setName(rs.getString("name"));
                user.setSurname(rs.getString("surname"));
                user.setPassport_id(rs.getString("passport_id"));
                user.setPhone_number(rs.getInt("phone_number"));

                return user;
            }

        });

        return listUser;
    }
}
