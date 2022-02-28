/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.CusDAO;
import java.util.ArrayList;
import model.Customers;

/**
 *
 * @author AnhVo-PC
 */
public class test {
    public static void main(String[] args) {
        CusDAO db = new CusDAO();
        ArrayList<Customers> acc = db.getAll();
        for(Customers a : acc){
            System.out.println(a);
        }
    }
}
