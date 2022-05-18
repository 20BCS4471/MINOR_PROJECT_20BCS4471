/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class Logout extends HttpServlet
{
 public void  doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
 {
  res.setContentType("text/html");
  
     PrintWriter out=res.getWriter();
     
     HttpSession session=req.getSession();
     session.invalidate();
     
     out.println("logout successfully!");
     
     req.getRequestDispatcher("index.html").forward(req, res);
 }
}
