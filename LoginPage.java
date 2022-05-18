
package servlet;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginPage extends HttpServlet 
{
 public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
 {
  res.setContentType("text/html");
  
     PrintWriter out=res.getWriter();
     
     Connect c=new Connect();
     
     Connection cn=c.getCon();
     
     try
     {
      PreparedStatement ps=cn.prepareStatement("select name from user where uid=? and pass=?");
      String uid=req.getParameter("uid");
      String pass=req.getParameter("pass");
      
      ps.setString(1,uid);
      ps.setString(2,pass);
      
         ResultSet rs=ps.executeQuery();
         
         boolean flag=rs.next();
         
         HttpSession session=req.getSession();
               
      if(flag)
      {
                session.setAttribute("uid",uid);
         session.setAttribute("name",rs.getString(1));
       req.getRequestDispatcher("userGender.html").forward(req, res);
      }
      else
      {
       out.println("<h5>Invalid username or password");
       req.getRequestDispatcher("LoginPage.html").include(req, res);
      }
     }
     catch(Exception e)
     {
      out.println(e);
     }
 }
}
