package pl.filipzeglen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import pl.filipzeglen.model.User;
import pl.filipzeglen.util.ConnectionProvider;
import pl.filipzeglen.util.DbOperationException;

public class MysqlUserDao implements UserDao {

    private final static String CREATE = "INSERT INTO user(img, firstname, rolename, password) VALUES(?, ?, ?, ?);";
    private final static String READ = "SELECT img, firstname, rolename FROM user WHERE uid = ?;";
    private final static String UPDATE = "UPDATE user SET img=?, firstname=?, rolename=? WHERE uid = ?;";
    private final static String DELETE = "DELETE FROM user WHERE uid=?;";

    @Override
    public void create(User user) {
        try (Connection conn = ConnectionProvider.getConnection();
             PreparedStatement prepStmt = conn.prepareStatement(CREATE);) {
            prepStmt.setString(1, user.getImg());
            prepStmt.setString(2, user.getFirstName());
            prepStmt.setString(3, user.getRoleName());
            prepStmt.setString(4, user.getPassword());
            prepStmt.executeUpdate();
        } catch(SQLException e) {
            throw new DbOperationException(e);
        }
    }

    @Override
    public User read(String uid) {
        User resultUser = null;
        try (Connection conn = ConnectionProvider.getConnection();
             PreparedStatement prepStmt = conn.prepareStatement(READ);) {
            prepStmt.setString(1, uid);
            ResultSet resultSet = prepStmt.executeQuery();
            if(resultSet.next()) {
                resultUser = new User();
                resultUser.setImg(resultSet.getString("img"));
                resultUser.setFirstName(resultSet.getString("firstname"));
                resultUser.setRoleName(resultSet.getString("rolename"));
            }
        } catch(SQLException e) {
            throw new DbOperationException(e);
        }
        return resultUser;
    }

    @Override
    public void update(User user) {
        try (Connection conn = ConnectionProvider.getConnection();
             PreparedStatement prepStmt = conn.prepareStatement(UPDATE);) {
            prepStmt.setString(1, user.getImg());
            prepStmt.setString(2, user.getFirstName());
            prepStmt.setString(3, user.getRoleName());
            prepStmt.executeUpdate();
        } catch(SQLException e) {
            throw new DbOperationException(e);
        }
    }

    @Override
    public void delete(User user) {
        try (Connection conn = ConnectionProvider.getConnection();
             PreparedStatement prepStmt = conn.prepareStatement(DELETE);) {
            prepStmt.setString(1, Integer.toString(user.getUid()));
            prepStmt.executeUpdate();
        } catch(SQLException e) {
            throw new DbOperationException(e);
        }
    }
}