package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class Owner extends HttpServlet
{
 public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
 {
  res.setContentType("text/html");
  
  PrintWriter out=res.getWriter();
  
  String oid=(String)req.getParameter("oid");
  String pass=(String)req.getParameter("opass");
  
  if(oid.equals("harsh123") && pass.equals("11111"))
  {
      HttpSession session=req.getSession();
      
      session.setAttribute("oname","Harsh");
      
      req.getRequestDispatcher("GenderOwner.jsp").forward(req, res);
  }
  else
  {
   out.println("Invalid owner id or password");
   req.getRequestDispatcher("ownerLogin.html").include(req, res);
  }
 }        
}
