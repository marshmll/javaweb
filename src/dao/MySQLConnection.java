package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnection {
    private static MySQLConnection instance;
    private Connection conn;

    private MySQLConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://mysql:3306/social_media?enabledTLSProtocols=TLSv1.2", "client",
                    "bancodedados");
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public static final MySQLConnection getInstance() {
        if (instance == null) {
            instance = new MySQLConnection();
        }

        return instance;
    }

    public final Connection getConnection() {
        return conn;
    }
}
