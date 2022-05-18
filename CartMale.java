package servlet;
        
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class CartMale extends HttpServlet
{
 public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
 {
  res.setContentType("text/html");
  PrintWriter out=res.getWriter();
  
  Connect c=new Connect();
  
  Connection cn=c.getCon();
  try
  {
      PreparedStatement ps=cn.prepareStatement("insert into cart values(?,?,?,?,?,?,?)");
      
      HttpSession session=req.getSession();
      
      String uid=(String)session.getAttribute("uid");
      int p1=Integer.parseInt(req.getParameter("p1"));
      int p2=Integer.parseInt(req.getParameter("p2"));
      int p3=Integer.parseInt(req.getParameter("p3"));
      int p4=Integer.parseInt(req.getParameter("p4"));
      int p5=Integer.parseInt(req.getParameter("p5"));
      
      int  price=p1*8+p2*7+p3*7+p4*9+p5*10;
      
      ps.setString(1,uid);
      ps.setInt(2,p1);
      ps.setInt(3,p2);
      ps.setInt(4,p3);
      ps.setInt(5,p4);
      ps.setInt(6,p5);
      ps.setInt(7,price);
      
      ps.executeUpdate();
      out.println("<div>");
      out.println("<a href='userGender.html'>Home </a>");
       out.println("<a href='logout'>LogOut</a>");
       out.println("</div>");
      out.println("PROCEED FURTHER FOR PAYMENT");
      
  }
  catch(Exception e)
  {
   out.println(e);   
  }
 }
}
