/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.AccountDAO;
import java.util.ArrayList;
import model.Account;

/**
 *
 * @author AnhVo-PC
 */
public class test {
    public static void main(String[] args) {
        AccountDAO db = new AccountDAO();
        ArrayList<Account> acc = db.getAll();
        for(Account a : acc){
            System.out.println(a);
        }

    }
}
