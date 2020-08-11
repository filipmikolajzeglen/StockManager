package pl.filipzeglen.dao;

import pl.filipzeglen.model.User;

public interface UserDao {
    public void create(User user);

    public User read(String name);

    public void update(User user);

    public void delete(User user);
}