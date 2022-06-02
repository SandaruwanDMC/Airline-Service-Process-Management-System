
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

@WebServlet(name = "updateClient", urlPatterns = {"/updateClient"})
public class updateClient extends HttpServlet {

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
        String airport = request.getParameter("airport");
        String adults = request.getParameter("adults");
        String children = request.getParameter("children");
        beanClass cb = new beanClass();
        if(cb.updateClient(email, airport, adults, children))
        {
            out.println("<div class='alert alert-success' role='alert'> <b> Client Update success!!! </b> </div>");
            RequestDispatcher rd = request.getRequestDispatcher("client.jsp");
            rd.include(request, response);
        }
        else{
            out.println("<div class='alert alert-danger' role='alert'> <b> Client Update Failed!!!</b> </div>");
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
