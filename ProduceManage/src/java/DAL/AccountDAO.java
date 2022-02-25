package DAL;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author AnhVo-PC
 */
public class AccountDAO extends BaseDAO<Account>{
    
    @Override
    public ArrayList<Account> getAll() {
        ArrayList<Account> acc = new ArrayList<>();
        try {
            String sql = "SELECT [Username], [Password], [DisplayName] FROM [UserTBL]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account s = new Account();
                s.setUsername(rs.getString("Username"));
                s.setPassword(rs.getString("Password"));
                s.setDisplayname(rs.getString("DisplayName"));
                acc.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return acc;
    }

    public Account Login(String username, String password) {
        try {
            String sql = "SELECT [Username], [Password], [DisplayName]\n" +
                         "FROM [UserTBL]\n" + 
                         "WHERE [Username] = ? AND [Password] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Account a = new Account();
                a.setUsername(rs.getString("Username"));
                a.setPassword(rs.getString("Password"));
                a.setDisplayname(rs.getString("DisplayName"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void deleteAccount(int id) {
        try {
            String sql = "DELETE Student WHERE id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
