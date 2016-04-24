package dao;

import domain.User;

import java.util.List;

/**
 * Created by Igor on 13.04.2016.
 */
public interface UserDao {
    void addOrUpdate(User user);

    void delete(Integer user_id);

    User get(Integer user_id);

    List<User> listUsers();
}
