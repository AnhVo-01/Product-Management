/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.AccountDAO;
import DAO.CusDAO;
import java.util.ArrayList;
import java.util.Random;
import model.Account;
import model.Customers;

/**
 *
 * @author AnhVo-PC
 */
public class test {
    static public String ID() {
        Random rd = new Random();
        StringBuilder sb = new StringBuilder();
        
        for (int i=0; i<10; i++) {
            int temp = rd.nextInt(9);
            sb.append(temp);
        }
        return sb.toString();
    }
    public static void main(String[] args) {
        AccountDAO db = new AccountDAO();
        String Name = "uname";
        String Pass = "upass";
        String Dis = "udisplay";
        String Email = "uemail";
        String Mod = "";
        String Admin = "";
        if(Mod == null || Mod.isEmpty()) {
            Mod = "false";
        }
        if(Admin == null || Admin.isEmpty()) {
            Admin = "false";
        }


        // add the student to the database
        db.createAccount("U"+ID(), Name, Pass, Dis, Email, Boolean.parseBoolean(Mod), Boolean.parseBoolean(Admin));
        ArrayList<Account> list = db.getAll();
        for (Account a : list){
            System.out.println(a);
        }
//        System.out.println(db.getAcc("U34485871054").toString());
    }
}
