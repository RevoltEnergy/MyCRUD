package ua.myfirstcrud.manager.service;

import ua.myfirstcrud.manager.model.User;

import java.util.List;

/**
 * Created by ace on 3/15/2017.
 */
public interface UserService {
    public void addUser(User user);
    public void updateUser(User user);
    public void removeUser(int id);
    public User getUserById(int id);
    public List<User> listUsers();
}
