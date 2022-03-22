package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;
import model.Product;

/**
 *
 * @author AnhVo-PC
 */
public class OrderDAO extends BaseDAO<Order> {
    
    @Override
    public ArrayList<Order> getAll() {
        ArrayList<Order> cus = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Orders]";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order od = new Order();
                od.setOid(rs.getInt(1));
                od.setCusid(rs.getString(2));
                od.setOrderDate(rs.getDate(3));
                od.setShipDate(rs.getDate(5));
                od.setShipper(rs.getString(6));              
                cus.add(od);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cus;
    }
    
    public ArrayList<Order> getOrderDetals(String id) {
        ArrayList<Order> order = new ArrayList<>();
        try {
            String sql = "SELECT\n" +
                            "[Order Details].OrderID, \n" +
                            "CustomerID, [Product].ProductID, \n" +
                            "Name, Color, \n" +
                            "(UnitPrice * Quantity - UnitPrice * Discount) as TotalPrice, \n" +
                            "Quantity, Discount,\n" +
                            "OrderDate, ShippedDate, Title\n" +
                        "FROM [Orders]\n" +
                            "JOIN [Order Details]\n" +
                            "ON [Orders].[OrderID] = [Order Details].[OrderID]\n" +
                            "JOIN [Product]\n" +
                            "ON [Order Details].ProductID = [Product].ProductID\n" +
                            "JOIN [Tracking]\n" +
                            "ON [Tracking].ID = [Orders].ShipVia\n" +
                        "WHERE CustomerID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Order od = new Order(); 
                
                od.setOid(rs.getInt(1));
                od.setCusid(rs.getString(2));
                od.setProduct(new Product(rs.getInt(3), rs.getString(4), rs.getString(5)));
                od.setTotalprice(rs.getDouble(6));
                od.setQuantity(rs.getInt(7));
                od.setDiscount(rs.getDouble(8));
                od.setOrderDate(rs.getDate(9));
                od.setShipDate(rs.getDate(10));
                od.setShipper(rs.getString(11));
                order.add(od);
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return order;
    }
}
