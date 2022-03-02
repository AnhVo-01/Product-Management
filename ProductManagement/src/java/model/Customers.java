package model;

/**
 *
 * @author AnhVo-PC
 */
public class Customers {
    String cusid;
    String name;
    int phone;
    String email;
    String fax;
    Address cusAddress;

    public Customers() {
    }

    public Customers(String cusid, String name, int phone, String email, String fax, Address cusAddress) {
        this.cusid = cusid;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.fax = fax;
        this.cusAddress = cusAddress;
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

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public Address getCusAddress() {
        return cusAddress;
    }

    public void setCusAddress(Address cusAddress) {
        this.cusAddress = cusAddress;
    }

}
