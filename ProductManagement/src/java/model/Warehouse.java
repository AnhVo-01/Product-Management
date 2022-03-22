package model;

/**
 *
 * @author AnhVo-PC
 */
public class Warehouse {
    int localid;
    String name;
    String addr;
    int selled;
    int avail;
    int total;

    public Warehouse() {
    }

    public Warehouse(int localid, String name, String addr, int selled, int avail, int total) {
        this.localid = localid;
        this.name = name;
        this.addr = addr;
        this.selled = selled;
        this.avail = avail;
        this.total = total;
    }

    

    public int getLocalid() {
        return localid;
    }

    public void setLocalid(int localid) {
        this.localid = localid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public int getSelled() {
        return selled;
    }

    public void setSelled(int selled) {
        this.selled = selled;
    }

    public int getAvail() {
        return avail;
    }

    public void setAvail(int avail) {
        this.avail = avail;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }
    
}
