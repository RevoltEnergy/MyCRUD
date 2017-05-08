package ua.myfirstcrud.manager.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import ua.myfirstcrud.manager.model.User;

import java.util.List;

/**
 * Created by ace on 3/15/2017.
 */

@Repository
public class UserDaoImpl implements UserDao{
    public static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void addUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(user);
        logger.info("User was successfully added. User details: " + user);
    }

    public void updateUser(User user) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(user);
        logger.info("User was successfully updated. User details: " + user);
    }

    public void removeUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));

        if (user != null) session.delete(user);

        logger.info("User was successfully deleted. User details: " + user);
    }

    public User getUserById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));
        logger.info("User was successfully loaded. User details: " + user);
        return user;
    }

    @SuppressWarnings("unchecked")
    public List<User> listUsers(String searchValue) {
        Session session = this.sessionFactory.getCurrentSession();
        String queryLine = searchValue != null ?
                (searchValue.isEmpty() ? "from User" : "from User where surname = :value")
                : "from User";
        Query query = session.createQuery(queryLine);
        if (queryLine.contains(":value")) query.setParameter("value", searchValue);
        List<User> userList = query.list();

        for (User user : userList) {
            logger.info("User list: " + user);
        }
        return userList;
    }
}
