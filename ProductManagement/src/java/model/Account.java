package model;

/**
 *
 * @author AnhVo-PC
 */

public class Account {
    String id;
    String cusid;
    String username;
    String password;
    String displayname;
    String email;
    Status status;

    public Account() {
    }

    public Account(String id, String cusid, String username, String password, String displayname, String email, Status status) {
        this.id = id;
        this.cusid = cusid;
        this.username = username;
        this.password = password;
        this.displayname = displayname;
        this.email = email;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCusid() {
        return cusid;
    }

    public void setCusid(String cusid) {
        this.cusid = cusid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDisplayname() {
        return displayname;
    }

    public void setDisplayname(String displayname) {
        this.displayname = displayname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }
    
}
