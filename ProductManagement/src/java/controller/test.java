/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ProductDAO;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author AnhVo-PC
 */
public class test {

    public static void main(String[] args) {
        ProductDAO db = new ProductDAO();
        List<Product> plist = db.getAll();
        
        for (Product a : plist){
            System.out.println(a);
        }
//        System.out.println(db.getAcc("U34485871054").toString());
    }
}
