package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.User;

public class UserDao {
    private Connection conn;

    public UserDao() {
        conn = MySQLConnection.getInstance().getConnection();
    }

    public ArrayList<User> getUsers() {
        ArrayList<User> users = new ArrayList<>();

        try {
            String query = "SELECT * FROM user";
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                users.add(new User(rs.getInt("id"), rs.getString("username"), rs.getString("fullname"),
                        rs.getString("email"), rs.getString("password"), rs.getString("timestamp_register")));

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return users;
    }

    public User getUserByUsername(final String username) {
        User user = null;

        try {
            String query = "SELECT * FROM user WHERE username = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                user = new User(rs.getInt("id"), rs.getString("username"), rs.getString("fullname"),
                        rs.getString("email"), rs.getString("password"), rs.getString("timestamp_register"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return user;
    }
}
