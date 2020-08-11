package pl.filipzeglen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import pl.filipzeglen.model.Bike;
import pl.filipzeglen.util.ConnectionProvider;
import pl.filipzeglen.util.DbOperationException;

public class MysqlBikeDao implements BikeDao{

    private final static String CREATE = "INSERT INTO bike(name, size, description) VALUES(?, ?, ?);";
    private final static String READ = "SELECT name, size, description FROM bike WHERE name = ?;";
    private final static String UPDATE = "UPDATE bike SET name=?, size=?, description=? WHERE name = ?;";
    private final static String DELETE = "DELETE FROM bike WHERE name=?;";

    public void create(Bike bike) {
        try (Connection conn = ConnectionProvider.getConnection();
             PreparedStatement prepStmt = conn.prepareStatement(CREATE)) {
            prepStmt.setString(1, bike.getName());
            prepStmt.setString(2, bike.getSize());
            prepStmt.setString(3, bike.getDescription());
            prepStmt.executeUpdate();
        } catch(SQLException e) {
            throw new DbOperationException(e);
        }
    }

    public Bike read(String name) {
        Bike resultBike = null;
        try (Connection conn = ConnectionProvider.getConnection();
             PreparedStatement prepStmt = conn.prepareStatement(READ);) {
            prepStmt.setString(1, name);
            ResultSet resultSet = prepStmt.executeQuery();
            if (resultSet.next()) {
                resultBike = new Bike();
                resultBike.setName(resultSet.getString("name"));
                resultBike.setSize(resultSet.getString("size"));
                resultBike.setDescription(resultSet.getString("description"));
            }
        } catch(SQLException e) {
            throw new DbOperationException(e);
        }
        return resultBike;
    }

    public void update(Bike bike) {
        try (Connection conn = ConnectionProvider.getConnection();
             PreparedStatement prepStmt = conn.prepareStatement(UPDATE);) {
            prepStmt.setString(1, bike.getName());
            prepStmt.setString(2, bike.getSize());
            prepStmt.setString(3, bike.getDescription());
            prepStmt.setString(4, bike.getName());
            prepStmt.executeUpdate();
        } catch(SQLException e) {
            throw new DbOperationException(e);
        }
    }

    public void delete(Bike bike) {
        try (Connection conn = ConnectionProvider.getConnection();
             PreparedStatement prepStmt = conn.prepareStatement(DELETE);) {
            prepStmt.setString(1, bike.getName());
            prepStmt.executeUpdate();
        } catch(SQLException e) {
            throw new DbOperationException(e);
        }
    }
}