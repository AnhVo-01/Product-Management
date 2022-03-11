package model;

/**
 *
 * @author AnhVo-PC
 */
public class Customers {
    String cusid;
    String name;
    String phone;
    Address cusAddress;
    String email;
    String fax;

    public Customers() {
    }

    public Customers(String cusid, String name, String phone, Address cusAddress, String email, String fax) {
        this.cusid = cusid;
        this.name = name;
        this.phone = phone;
        this.cusAddress = cusAddress;
        this.email = email;
        this.fax = fax;
    }

    public String getCusid() {
        return cusid;
    }

    public void setCusid(String cusid) {
        this.cusid = cusid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Address getCusAddress() {
        return cusAddress;
    }

    public void setCusAddress(Address cusAddress) {
        this.cusAddress = cusAddress;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }
    
}
