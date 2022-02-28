package model;

/**
 *
 * @author AnhVo-PC
 */
public class Status {
    boolean isMod;
    boolean isAdmin;

    public Status() {
    }

    public Status(boolean isMod, boolean isAdmin) {
        this.isMod = isMod;
        this.isAdmin = isAdmin;
    }

    public boolean isIsMod() {
        return isMod;
    }

    public void setIsMod(boolean isMod) {
        this.isMod = isMod;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    } 
}
