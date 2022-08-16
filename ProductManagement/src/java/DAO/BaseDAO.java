package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author AnhVo-PC
 */
public abstract class BaseDAO<T> {
    String DATABASE_DRIVER = "com.mysql.cj.jdbc.Driver";
    String DATABASE_URL = "jdbc:mysql://localhost:3306/PDM";
    String USERNAME = "root";
    String PASSWORD = "";
    String MAX_POOL = "250";

    protected Connection connection;
    protected Properties properties;

    private Properties getProperties() {
        if (properties == null) {
            properties = new Properties();
            properties.setProperty("user", USERNAME);
            properties.setProperty("password", PASSWORD);
            properties.setProperty("MaxPooledStatements", MAX_POOL);
        }
        return properties;
    }
    
    public BaseDAO() {
        try {
//            String user = "sa";
//            String pass = "123456";
//            String url = "jdbc:sqlserver://localhost:1433;databaseName=PDM";
//            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//            connection = DriverManager.getConnection(url, user, pass);

            Class.forName(DATABASE_DRIVER);
            connection = DriverManager.getConnection(DATABASE_URL, getProperties());
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public abstract ArrayList<T> getAll();

}
