package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;
import model.Warehouse;

/**
 *
 * @author AnhVo-PC
 */
public class ProductDAO extends BaseDAO<Product> {
    @Override
    public ArrayList<Product> getAll() {
        ArrayList<Product> acc = new ArrayList<>();
        try {
            String sql = "SELECT p.ProductID, p.Name, p.Color, p.Price, psc.Category as Category, p.ModelID, p.Discontinued\n" +
                            "FROM [Product] p\n" +
                            "INNER JOIN [ProductSubcategory] psc\n" +
                            "ON p.SubcategoryID = psc.SubcategoryID;";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProductID(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setColor(rs.getString(3));
                p.setPrice(rs.getDouble(4));
                p.setSubName(rs.getString(5));
                p.setModelID(rs.getInt(6));
                p.setDiscontinued(rs.getBoolean(7));
                acc.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return acc;
    }
    
    public Product getPDbyID(String id) {
        try {
            String sql = "SELECT p.ProductID, p.Name, p.Color, p.Price, psc.Category, p.ModelID, p.Discontinued\n" +
                        "FROM [Product] p\n" +
                        "INNER JOIN [ProductSubcategory] psc\n" +
                        "ON p.SubcategoryID = psc.SubcategoryID\n" +
                        "WHERE ProductID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                p.setProductID(rs.getInt(1));
                p.setName(rs.getString(2));
                p.setColor(rs.getString(3));
                p.setPrice(rs.getDouble(4));
                p.setSubName(rs.getString(5));
                p.setModelID(rs.getInt(6));
                p.setDiscontinued(rs.getBoolean(7));
                return p;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public int countP() {
        String sql = "SELECT COUNT(*) as totalrow FROM [Product]";
        PreparedStatement statement;
        try {
            statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getInt("totalrow");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    
     public ArrayList<Product> paging(String orderBy,int pageindex, int pagesize) {
        String sql = "SELECT * FROM\n" +
                        "(SELECT \n" +
                        "ROW_NUMBER() \n" +
                        "OVER (ORDER BY "+orderBy+") as rownum, p.ProductID, p.Name, p.Color, p.Price, p.Category, p.ModelID, p.Discontinued\n" +
                        "FROM \n" +
                        "(SELECT prod.ProductID, prod.Name, prod.Color, prod.Price, psc.Category, prod.ModelID, prod.Discontinued \n" +
                        "FROM [Product] prod \n" +
                        "INNER JOIN [ProductSubcategory] psc \n" +
                        "ON prod.SubcategoryID = psc.SubcategoryID) p) as pPaging\n" +
                        "WHERE rownum >= ((?-1) * ?) + 1 AND rownum <= ? * ?";
        ArrayList<Product> product = new ArrayList<>();
        PreparedStatement statement;
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, pageindex);
            statement.setInt(2, pagesize);
            statement.setInt(3, pagesize);
            statement.setInt(4, pageindex);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setProductID(rs.getInt(2));
                p.setName(rs.getString(3));
                p.setColor(rs.getString(4));
                p.setPrice(rs.getDouble(5));
                p.setSubName(rs.getString(6));
                p.setModelID(rs.getInt(7));
                p.setDiscontinued(rs.getBoolean(8));
                product.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return product;
    }
     
    public void updateAcc(String id, String username, String password, String displayname, String email, boolean isMod, boolean isAsmin) {    
        try {
            String sql = "UPDATE [Account] SET [userName] = ?, \n" +
                                            "[Password] = ?,   \n" +
                                            "[DisplayName] = ?,\n" +
                                            "[Email] = ?,      \n" +
                                            "[isMod] = ?,      \n" +
                                            "[isAdmin] = ?     \n" +
                            "WHERE [ProductID] = ?;";
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
     
    public void deleProduct(String id) {
        try {
            String sql = "DELETE [Product] WHERE ProductID=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<Warehouse> getLocal(String id) {
        ArrayList<Warehouse> wh = new ArrayList<>();
        try {
            String sql = "SELECT [ProductID], [Bin], (Quantity - Bin) as Availability, [Quantity], [Warehouse].LocationID, [Name], [Address] \n" +
                            "FROM [ProductInventory] INNER JOIN [Warehouse]\n" +
                            "ON [ProductInventory].[LocationID] = [Warehouse].[LocationID]\n" +
                        "WHERE [ProductID] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Warehouse w = new Warehouse();
                w.setSelled(rs.getInt(2));
                w.setAvail(rs.getInt(3));
                w.setTotal(rs.getInt(4));
                w.setLocalid(rs.getInt(5));
                w.setName(rs.getString(6));
                w.setAddr(rs.getString(7));
                wh.add(w);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return wh;
    }
}
