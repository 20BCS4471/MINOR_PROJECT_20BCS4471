package servlet;

import java.sql.*;

public class Connect 
{
 Connection cn;
 
 public Connect() 
 {
  try
  {
   Class.forName("com.mysql.jdbc.Driver");
   cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/LaundryService","root","harsh123");   
  }
  catch(Exception e)
  {
   System.out.println(e);
  }
 }
 
 public Connection getCon()
 {
  return cn;
 }
}
