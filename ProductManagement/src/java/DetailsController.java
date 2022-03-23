import DAO.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AnhVo-PC
 */
public class DetailsController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        String id = request.getParameter("pid");
        String Name = request.getParameter("pname");
        String Color = request.getParameter("pcolor");
        String Price = request.getParameter("price");
        String sub = request.getParameter("subcate");
        String modelID = request.getParameter("modelID");
        String disc = request.getParameter("Discon");
        switch(disc){
            case "Y" :
                disc = "true";
                break;
            case "N" :
                disc = "false";
                break;
        }
        ProductDAO dao = new ProductDAO();  
        
        dao.updateProduct(id, Name, Color, Double.parseDouble(Price), Integer.parseInt(sub), Integer.parseInt(modelID), Boolean.parseBoolean(disc));   
        response.sendRedirect("DetailsServlet");
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
