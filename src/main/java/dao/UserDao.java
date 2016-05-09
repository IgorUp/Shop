package dao;

import domain.User;

import java.util.List;

/**
 * Created by Igor on 13.04.2016.
 */
public interface UserDao {
    void addOrUpdate(User user);

    void upd(User user);

    void delete(String user_id);

    User get(String user_id);

    List<User> listUsers();

}
