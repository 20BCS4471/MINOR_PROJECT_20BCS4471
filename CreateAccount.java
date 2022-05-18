package servlet;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class CreateAccount extends HttpServlet 
{
 public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
 {
  res.setContentType("text/html");
  PrintWriter out=res.getWriter();
  
  Connect c=new Connect();
     Connection cn=c.getCon();
     
  try
  {
      PreparedStatement ps=cn.prepareStatement("insert into user values(?,?,?,?,?,?)");
      String uid=req.getParameter("uid");
      long cno=Long.parseLong(req.getParameter("cno"));
      String hname=req.getParameter("hostelname");
      int rno=Integer.parseInt(req.getParameter("roomno"));
      String user=req.getParameter("uname");
      String  pass=req.getParameter("pass");
      
      ps.setString(1,uid);
      ps.setLong(2,cno);
      ps.setString(3,user);
      ps.setString(4,hname);
      ps.setInt(5,rno);
      ps.setString(6,pass);
      
   ps.executeUpdate();
   
      HttpSession session=req.getSession();
      session.setAttribute("uname",user);
   //out.println("Account Created  Successfully");
   req.getRequestDispatcher("GenderOwner.html").include(req, res);
  }
  catch(Exception e)
  {
   out.println(e);
  }
 }
}
