/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlet;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author hkhar
 */
public class servletlearn extends HttpServlet
{
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException
    {
        int i=Integer.parseInt(req.getParameter("num1"));
        int j=Integer.parseInt(req.getParameter("num2"));
        int k=i+j;
        PrintWriter out =res.getWriter();
        out.println("sum is "+k);
        
        
    }
    
}
