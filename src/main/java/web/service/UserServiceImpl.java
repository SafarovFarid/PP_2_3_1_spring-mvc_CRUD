package web.service;

import org.springframework.beans.factory.annotation.Autowired;
import web.DAO.UserDao;
import web.model.User;

import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
public class UserServiceImpl implements UserService{

    private final UserDao userDao;

    @Autowired
    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }


    @Override
    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }
    @Override
    public User getUser(long id){
        return userDao.getUser(id);
    }
    @Transactional
    @Override
    public void createUser(User user) {
        if(user.getId() == 0) {
            userDao.createUser(user);
        } else {
            userDao.updateUser(user);
        }

    }
    @Transactional
    @Override
    public User deleteUser(long id) {
        return userDao.deleteUser(id);
    }



}
