<%-- 
    Document   : delete
    Created on : May 1, 2022, 7:36:08 PM
    Author     : hkhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="servlet.*,java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
         Connect c=new Connect();
         
          Connection cn=c.getCon();
          
          try
          {
           String uid=request.getParameter("uid");
           
           PreparedStatement ps=cn.prepareStatement("delete from cart where uid=?");
           ps.setString(1,uid);
           
           ps.executeUpdate();
           
           response.sendRedirect("detailsOwner.jsp");
          }
          catch(Exception e)
                  {
                      
                  }
   
        %>
    </body>
</html>
