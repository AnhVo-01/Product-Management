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
public class AccountController extends HttpServlet {
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
        String id = request.getParameter("sid");
        String Name = request.getParameter("userN");
        String Pass = request.getParameter("userP");
        String Dis = request.getParameter("display");
        String Email = request.getParameter("email");
        String Mod = request.getParameter("eMod");
        String Admin = request.getParameter("eAdmin");
        if(Mod == null || Mod.isEmpty()) {
            Mod = "false";
        }
        if(Admin == null || Admin.isEmpty()) {
            Admin = "false";
        }

        AccountDAO dao = new AccountDAO();  
        
        dao.updateAcc(id, Name, Pass, Dis, Email, Boolean.parseBoolean(Mod), Boolean.parseBoolean(Admin));   
        response.sendRedirect("AccountList");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Name = request.getParameter("uname");
        String Pass = request.getParameter("upass");
        String Dis = request.getParameter("udisplay");
        String Email = request.getParameter("uemail");
        String Status = request.getParameter("status");
        
        String Mod = "", Admin = "";
        if(Status.equals("isMod")){
            Mod = "true";
            Admin = "false";
        }else if(Status.equals("isAdmin")){
            Mod = "false";
            Admin = "true";
        }else if(Status.equals("isUser")){
            Mod = "false";
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
