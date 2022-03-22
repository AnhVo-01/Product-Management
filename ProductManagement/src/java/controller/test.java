/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.OrderDAO;
import DAO.ProductDAO;
import java.util.ArrayList;
import java.util.List;
import model.Order;
import model.Product;

/**
 *
 * @author AnhVo-PC
 */
public class test {

    public static void main(String[] args) {
        OrderDAO dao = new OrderDAO();
        ArrayList<Order> ord = dao.getOrderDetals("CPDM10027");
        
        for (Order a : ord){
            System.out.println(a);
        }
//        System.out.println(db.getAcc("U34485871054").toString());
    }
}
