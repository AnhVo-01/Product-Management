package controller;

import DAO.AccountDAO;
import DAO.CusDAO;
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
public class UserController extends HttpServlet {

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
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        String id = request.getParameter("sid");
        String Name = request.getParameter("userN");
        String Pass = request.getParameter("userP");
        String Dis = request.getParameter("display");
        String Email = request.getParameter("email");

        AccountDAO dao = new AccountDAO();  
        
        dao.updateAcc(id, Name, Pass, Dis, Email, false, false);
        request.getSession().setAttribute("user", dao.getAcc(id));
        request.getRequestDispatcher("userprofile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        CusDAO dao = new CusDAO(); 
        
        String ID = request.getParameter("cid");
        String Name = request.getParameter("cname");
        String Phone = request.getParameter("cphone");
        String add = request.getParameter("adds");
        String City = request.getParameter("city");
        String Country = request.getParameter("country");
        String ZIP = request.getParameter("zip");
        String Email = request.getParameter("cmail");
        String Fax = request.getParameter("cfax");
        
        dao.updateCus(ID, Name, Phone, add, City, Country, ZIP, Email, Fax);
        response.sendRedirect("ProfileList");
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
