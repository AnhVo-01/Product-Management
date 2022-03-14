package model;

/**
 *
 * @author AnhVo-PC
 */
public class Product {
    int productID;
    String name;
    String color;
    double price;
    String subName;
    int modelID;
    boolean discontinued;

    public Product() {
    }

    public Product(int productID, String name, String color, double price, String subName, int modelID, boolean discontinued) {
        this.productID = productID;
        this.name = name;
        this.color = color;
        this.price = price;
        this.subName = subName;
        this.modelID = modelID;
        this.discontinued = discontinued;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getSubName() {
        return subName;
    }

    public void setSubName(String subName) {
        this.subName = subName;
    }

    public int getModelID() {
        return modelID;
    }

    public void setModelID(int modelID) {
        this.modelID = modelID;
    }

    public boolean isDiscontinued() {
        return discontinued;
    }

    public void setDiscontinued(boolean discontinued) {
        this.discontinued = discontinued;
    }
    
}
