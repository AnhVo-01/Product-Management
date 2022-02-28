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
            String sql = "SELECT * FROM [Customers]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Customers a = new Customers();
                a.setName(rs.getString(1));
                a.setPhone(rs.getInt(2));
                a.setEmail(rs.getString(3));
                a.setCusAddress(new Address(rs.getString(4),rs.getString(5),rs.getInt(6)));
                a.setEmail(rs.getString("email"));
                cus.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cus;
    }
}
