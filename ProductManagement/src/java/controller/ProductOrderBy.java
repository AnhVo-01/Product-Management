package controller;

import DAO.ProductDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;

/**
 *
 * @author AnhVo-PC
 */
public class ProductOrderBy extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDAO db = new ProductDAO();
        StringBuilder sb = new StringBuilder();

        String oID = request.getParameter("oid");
        switch(oID){
            case "increase":
                sb.append("ProductID ASC");
                break;
            case "decrease":
                sb.append("ProductID DESC");
                break;
            case "default":
                request.getRequestDispatcher("ProductList").forward(request, response);
                break;
        }
        String page = request.getParameter("page");
        if (page == null || page.length() == 0) {
            page = "1";
        }
        int pageindex = Integer.parseInt(page);
        int pagesize = 19;
        int totalrow = db.countP();
        int totalpage = (totalrow % pagesize == 0) ? totalrow / pagesize : totalrow / pagesize + 1;
        
        ArrayList<Product> plist = db.paging(sb.toString(), pageindex, pagesize);
        HttpSession session1 = request.getSession();
        
        session1.setAttribute("totalpage", totalpage);
        session1.setAttribute("pageindex", pageindex);
        session1.setAttribute("pagesize", pagesize);
       
        session1.setAttribute("temp", oID);
        session1.setAttribute("PList", plist);
        request.getRequestDispatcher("product.jsp").forward(request, response);
        
        session1.invalidate();
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
