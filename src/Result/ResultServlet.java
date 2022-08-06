package Result;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 * https://stackoverflow.com/questions/28961525/set-session-attribute-using-expression-language
 * https://stackoverflow.com/questions/20597043/in-jsp-how-can-i-check-using-jstl-if-certain-session-attribute-exists-in-requ
 * https://stackoverflow.com/questions/24222845/how-can-i-set-a-session-variable-in-a-servlet-and-get-it-in-a-jsp
 * https://stackoverflow.com/questions/17419727/how-to-use-session-in-jsp-pages-to-get-information
 */
@WebServlet(urlPatterns = {"/result", "/Result", "/ketquathi"})
public class ResultServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Lỗi</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Lỗi! Vui lòng nhập đầy đủ thông tin!" + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
            throws ServletException, IOException 
    {
        //processRequest(request, response);
        
        try {
        	String b = request.getParameter("search");
        	if(b==null){
        		b="";
        	}
        	String a = request.getParameter("Page");
        	if(a == null){
        		a="1";	
        	}
            	int page= Integer.parseInt(a);
            	int pageSize= 5;
            	int count = pageSize*(page-1);
            	
            	
            	String column = request.getParameter("column");
            	String sort = request.getParameter("sort");
            	if(column == null &&sort==null){
            		column="resultId";
            		sort="ASC";
            	}
        	request.setAttribute("DataTotal",KetQuaThi.Pagination(pageSize,page));
            request.setAttribute("DataTable",KetQuaThi.List(pageSize,count,b,column,sort));
            request.setAttribute("web_title","Kết Quả Thi");
            request.setAttribute("web_content","Result/Result.jsp");
            request.getRequestDispatcher("/WEB-INF/jsp/layout.jsp").forward(request, response);
        } 
        catch (Exception ex) 
        {
            //ex.printStackTrace();
            System.out.println("SQL Error: "+ex.getMessage());
        }
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
