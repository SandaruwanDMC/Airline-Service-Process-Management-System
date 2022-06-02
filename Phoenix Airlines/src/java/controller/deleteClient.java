
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.beanClass;

@WebServlet(name = "deleteClient", urlPatterns = {"/deleteClient"})
public class deleteClient extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        
        beanClass cd = new beanClass();
        if(cd.deleteClient(email))
        {
            out.println("<div class='alert alert-success col-md-8 offset-2' role='alert'>\n" +
"  Delete Success!!! </div>");
            RequestDispatcher rd = request.getRequestDispatcher("client.jsp");
            rd.include(request, response);
        }
        else{
          out.println("<div class='alert alert-danger' role='alert'>\n" +
"  Delete Failed!!!!\n" +
"</div>");
            RequestDispatcher rd = request.getRequestDispatcher("client.jsp");
            rd.include(request, response);  
        }
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
