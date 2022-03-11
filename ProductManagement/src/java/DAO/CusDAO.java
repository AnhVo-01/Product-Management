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
}
