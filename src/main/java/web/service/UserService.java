package web.service;

import web.model.User;

import java.util.List;

public interface UserService {
    List<User> getAllUsers();

    void createUser(User user);
    void updateUser(User user);

    User deleteUser(long id);
    User getUser(long id);
}
