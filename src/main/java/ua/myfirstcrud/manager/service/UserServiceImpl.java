package ua.myfirstcrud.manager.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.myfirstcrud.manager.dao.UserDao;
import ua.myfirstcrud.manager.model.User;

import java.util.List;

/**
 * Created by ace on 3/15/2017.
 */

@Service
public class UserServiceImpl implements UserService {
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Transactional
    public void addUser(User user) {
        this.userDao.addUser(user);
    }

    @Transactional
    public void updateUser(User user) {
        this.userDao.updateUser(user);
    }

    @Transactional
    public void removeUser(int id) {
        this.userDao.removeUser(id);
    }

    @Transactional
    public User getUserById(int id) {
        return this.userDao.getUserById(id);
    }

    @Transactional
    public List<User> listUsers(String searchValue) {
        return this.userDao.listUsers(searchValue);
    }
}
