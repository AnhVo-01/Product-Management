package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Address;
import model.Customers;

/**
 *
 * @author AnhVo-PC
 */
public class CusDAO extends BaseDAO<Customers> {
    
    @Override
    public ArrayList<Customers> getAll() {
        ArrayList<Customers> cus = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Customers] ORDER BY CustomerID DESC";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Customers c = new Customers();
                c.setCusid(rs.getString(1));
                c.setName(rs.getString(2));
                c.setPhone(rs.getString(3));
                c.setCusAddress(new Address(rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7)));
                c.setEmail(rs.getString(8));
                c.setFax(rs.getString(9));              
                cus.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cus;
    }
    public Customers getCusByID(String id) {
        try {
            String sql = "SELECT c.CustomerID, [Name], [Phone], [Address], [City], Country, ZIPCode, c.Email, Fax, userID  \n" +
                            "FROM [Customers] c \n" +
                            "INNER JOIN [Account] a\n" +
                            "ON c.CustomerID = a.CustomerID\n" +
                            "WHERE userID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Customers a = new Customers();
                a.setCusid(rs.getString(1));
                a.setName(rs.getString(2));
                a.setPhone(rs.getString(3));
                a.setCusAddress(new Address(rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7)));
                a.setEmail(rs.getString(8));
                a.setFax(rs.getString(9));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void updateCus(String id, String name, String phone, String address, String city, String country, String zip, String email, String fax) {    
        try {
            String sql = "UPDATE [Customers] SET [Name] = ?, \n" +
                                            "[Phone] = ?,  \n" +
                                            "[Address] = ?,\n" +
                                            "[City] = ?,   \n" +
                                            "[Country] = ?,\n" +
                                            "[ZIPCode] = ?,\n" +
                                            "[Email] = ?,  \n" +
                                            "[Fax] = ?     \n" +
                            "WHERE [CustomerID] = ?;";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, phone);
            statement.setString(3, address);         
            statement.setString(4, city);
            statement.setString(5, country);
            statement.setString(6, zip);
            statement.setString(7, email);
            statement.setString(8, fax);
            statement.setString(9, id);
      
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
