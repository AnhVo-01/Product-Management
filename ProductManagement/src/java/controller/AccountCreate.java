package controller;

import DAO.AccountDAO;
import java.io.IOException;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AnhVo-PC
 */
public class AccountCreate extends HttpServlet {
    public String ID() {
        Random rd = new Random();
        StringBuilder sb = new StringBuilder();
        
        for (int i=0; i<rd.nextInt(6)+10; i++) {
            int temp = rd.nextInt(9);
            sb.append(temp);
        }
        return sb.toString();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

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
        String Name = request.getParameter("uname");
        String Pass = request.getParameter("upass");
        String Dis = request.getParameter("udisplay");
        String Email = request.getParameter("uemail");
        String Mod = request.getParameter("isMod");
        if(Mod == null || Mod.isEmpty()) {
            Mod = "false";
        }
        String Admin = request.getParameter("isAdmin");
        if(Admin == null || Admin.isEmpty()) {
            Admin = "false";
        }

        // add the student to the database
        AccountDAO db = new AccountDAO();
        db.createAccount("U"+ID(), Name, Pass, Dis, Email, Boolean.parseBoolean(Mod), Boolean.parseBoolean(Admin));
        response.sendRedirect("AccountList");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Account Controller Servlet";
    }// </editor-fold>

}
