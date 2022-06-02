
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

@WebServlet(name = "bookingr", urlPatterns = {"/bookingr"})
public class bookingr extends HttpServlet {

   
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

        
         String dairport = request.getParameter("Dairport");
         String airport = request.getParameter("Aairport");
         String startdatetime = request.getParameter("sdatetime");
         String enddatetime = request.getParameter("edatetime");
         String adults = request.getParameter("adults");
         String children = request.getParameter("children");
         String vclass = request.getParameter("class");
         String email =request.getParameter("email");
         
       beanClass client = new beanClass();
       
       client.setDairport(dairport);
       client.setAirport(airport);
       client.setStartdatetime(startdatetime);
       client.setEnddatetime(enddatetime);
       client.setAdults(adults);
       client.setChildren(children);
       client.setVclass(vclass);
       client.setEmail(email);
        
         if (client.registerClient()){
            out.println("Registration Success!");
            RequestDispatcher req = request.getRequestDispatcher("index.html");
            req.include(request, response);
        }else{
            out.println("Registation Failed!");
            RequestDispatcher req = request.getRequestDispatcher("index.html");
            req.include(request, response);
        } 
         processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
