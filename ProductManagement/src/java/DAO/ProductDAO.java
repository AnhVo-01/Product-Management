package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;

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
}
