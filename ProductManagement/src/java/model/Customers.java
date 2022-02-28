package model;

/**
 *
 * @author AnhVo-PC
 */
public class Customers {
    String name;
    int phone;
    String email;
    Address cusAddress;

    public Customers() {
    }

    public Customers(String name, int phone, String email, Address cusAddress) {
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.cusAddress = cusAddress;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Address getCusAddress() {
        return cusAddress;
    }

    public void setCusAddress(Address cusAddress) {
        this.cusAddress = cusAddress;
    }
    
}
