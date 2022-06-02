<%-- 
    Document   : sessions
    Created on : Apr 24, 2021, 10:03:40 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
        HttpSession session1 =request.getSession(false);
        if(session1.getAttribute("email")!=null){  

        }  
       
          else{  
            
           response.sendRedirect("login.html"); 
        }  

        %>
    </head>
    
</html>
