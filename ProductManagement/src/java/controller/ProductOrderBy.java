package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AnhVo-PC
 */
public class ProductOrderBy extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        StringBuilder sb = new StringBuilder();

        String oID = request.getParameter("oid");
        if (oID != null) {
            switch (oID) {
                case "A-Z":
                    sb.append("ProductID ASC");
                    break;
                case "Z-A":
                    sb.append("ProductID DESC");
                    break;
                default:
                    response.sendRedirect("ProductList");
            }
        }
        
        request.getSession().setAttribute("temp", oID);
        request.getSession().setAttribute("orderBy", sb.toString());
        request.getRequestDispatcher("ProductList").forward(request, response);
        
//        oID = null;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
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
