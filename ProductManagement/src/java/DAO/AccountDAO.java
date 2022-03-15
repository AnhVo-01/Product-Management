package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Status;

/**
 *
 * @author AnhVo-PC
 */
public class AccountDAO extends BaseDAO<Account>{
    
    @Override
    public ArrayList<Account> getAll() {
        ArrayList<Account> acc = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Account]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getString(1));
                a.setUsername(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setDisplayname(rs.getString(4));
                a.setEmail(rs.getString(5));
                a.setStatus(new Status(rs.getBoolean(6),rs.getBoolean(7)));
                acc.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return acc;
    }

    public Account Login(String username, String password) {
        try {
            String sql = "SELECT [userName], [Password], [DisplayName], [isMod], [isAdmin]\n" +
                         "FROM [Account]\n" + 
                         "WHERE [Username] = ? AND [Password] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Account a = new Account();
                a.setUsername(rs.getString("userName"));
                a.setPassword(rs.getString("Password"));
                a.setDisplayname(rs.getString("DisplayName"));
                a.setStatus(new Status(rs.getBoolean("isMod"),rs.getBoolean("isAdmin")));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Account getAcc(String id) {
        try {
            String sql = "SELECT * FROM [Account] WHERE [userID] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Account a = new Account();
                a.setId(rs.getString(1));
                a.setUsername(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setDisplayname(rs.getString(4));
                a.setEmail(rs.getString(5));
                a.setStatus(new Status(rs.getBoolean(6),rs.getBoolean(7)));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void createAccount(String id, String username, String password, String displayname, String email, boolean isMod, boolean isAsmin) {
        try {
            String sql = "INSERT INTO [Account] ([userID],\n" +
                                                "[userName],\n" +
                                                "[Password],\n" +
                                                "[DisplayName],\n" +
                                                "[Email],\n" +
                                                "[isMod],\n" +
                                                "[isAdmin])\n" +
                                    "VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            statement.setString(2, username);
            statement.setString(3, password);
            statement.setString(4, displayname);
            statement.setString(5, email);
            statement.setBoolean(6, isMod);
            statement.setBoolean(7, isAsmin);
            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void updateAcc(String id, String username, String password, String displayname, String email, boolean isMod, boolean isAsmin) {    
        try {
            String sql = "UPDATE [Account] SET [userName] = ?, \n" +
                                            "[Password] = ?,   \n" +
                                            "[DisplayName] = ?,\n" +
                                            "[Email] = ?,      \n" +
                                            "[isMod] = ?,      \n" +
                                            "[isAdmin] = ?     \n" +
                            "WHERE [userID] = ?;";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            statement.setString(3, displayname);         
            statement.setString(4, email);
            statement.setBoolean(5, isMod);
            statement.setBoolean(6, isAsmin);
            statement.setString(7, id);

            
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void deleteAccount(String id) {
        try {
            String sql = "DELETE Account WHERE userID=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
