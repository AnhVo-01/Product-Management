package model;

import java.sql.Date;

/**
 *
 * @author AnhVo-PC
 */
public class Order {
    int oid;
    String cusid;
    Date orderDate;
    Date shipDate;
    String shipper;
    double totalprice;
    int quantity;
    double discount;
    Product product;

    public Order() {
    }

    public Order(int oid, String cusid, Date orderDate, Date shipDate, String shipper, double totalprice, int quantity, double discount, Product product) {
        this.oid = oid;
        this.cusid = cusid;
        this.orderDate = orderDate;
        this.shipDate = shipDate;
        this.shipper = shipper;
        this.totalprice = totalprice;
        this.quantity = quantity;
        this.discount = discount;
        this.product = product;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getCusid() {
        return cusid;
    }

    public void setCusid(String cusid) {
        this.cusid = cusid;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Date getShipDate() {
        return shipDate;
    }

    public void setShipDate(Date shipDate) {
        this.shipDate = shipDate;
    }

    public String getShipper() {
        return shipper;
    }

    public void setShipper(String shipper) {
        this.shipper = shipper;
    }

    public double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(double totalprice) {
        this.totalprice = totalprice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
    
}
