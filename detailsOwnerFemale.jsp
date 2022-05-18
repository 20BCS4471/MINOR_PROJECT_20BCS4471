<%-- 
    Document   : detailsOwnerFemale
    Created on : Apr 26, 2022, 3:25:35 AM
    Author     : hkhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="servlet.*,java.sql.*" %>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>Details For Owner</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="images/favicon1.png">
        <link rel="stylesheet" href="css/detailsOwner.css">
            <link rel="stylesheet" href="css/ClothCart.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            th{
                font-size: 1.2em;
            }
        </style>
    
    </head>
    <body>
        
         <% 
         Connect c=new Connect();
         
         Connection cn=c.getCon();
         ResultSet rs=null;
         
         try
         {
          PreparedStatement ps=cn.prepareStatement("select femalecart.uid,name,phone,Hname,Rno,p1,p2,p3,p4,price from femalecart inner join user on femalecart.uid=user.uid");
          rs=ps.executeQuery();
         }
         catch(Exception e)
         {
             
         }
        
        
        %>
        <section id="start">

    <div class="start-first">
      <img class="imageMan" src="images/man.png" alt="">
      <img class="imageWoman" src="images/man3.png" alt="">
      <img class="oldMan" src="images/oldman.png" alt="">
      <img class="oldWoman" src="images/oldwoman.png" alt="">
      <img class="imageWoman1" src="images/woman.png" alt="">
      <img class="imageWoman2" src="images/man2.png" alt="">
      <img class="imagesWoman3" src="images/man4.png" alt="">
      <img class="imagesWoman4" src="images/man5.png" alt="">
      <img class="child" src="images/child.png" alt="">
    </div>
<!--    <div class="welCome">
      <h1 class="font1">WELCOME TO LAUNDRY SERVICE....</h1>

    </div>-->


  </section>   
        <section id="forNavigation">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <!--<a class="navbar-brand" href="#">WELCOME SIR</a>-->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="GenderOwner.jsp">Home </a>
                        </li>
                                              
                        <li class="nav-item">
                           <a class="nav-link active" href="logout"><button type="button" class="btn btn-dark">LOGOUT</button></a>
                        </li>
                    </ul>        
                    </section>
                    <section id="tableOwner">
                        <table class="table table-hover table-info table-striped table-bordered table-danger">
                            <thead>
                                <tr>
                                    <th scope="col" style="width: 10%">UID</th>
                                    <th scope="col" style="width: 15%">NAME</th>
                                    <th scope="col" style="width: 15%">HOSTEL NAME/ROOM NO.</th>
                                    <th scope="col" style="width: 15%">CONTACT NO.</th>
                                    <th scope="col"style="width: 20%">SKIRT</th>
                                    <th scope="col"style="width: 20%">T-SHIRT</th>
                                    <th scope="col"style="width: 20%">JACKET</th>
                                    <th scope="col"style="width: 20%">PANT/JEANS</th>

                                    <th scope="col"style="width: 20%">PRICE</th>
                                    <th scope="col" style="width: 10%">DELETE</th>
                                </tr>
                            </thead>
                            <tbody>
<tr>
                                    <%
                               while(rs.next())
                               {
                                out.println("<tr>");
                          
                                   // out.println("<th scope='row'></th>");
                                    out.println("<td>"+rs.getString(1)+"</td>");
                                    out.println("<td>"+rs.getString(2)+"</td>");
                                    out.println("<td>"+rs.getString(4)+"/"+rs.getInt(5)+"</td>");
                                    out.println("<td>"+rs.getLong(3)+"</td>");
                                    out.println("<td>"+rs.getLong(6)+"</td>");
                                    out.println("<td>"+rs.getLong(7)+"</td>");
                                    out.println("<td>"+rs.getLong(8)+"</td>");
                                    out.println("<td>"+rs.getLong(9)+"</td>");
                                    out.println("<td>"+rs.getLong(10)+"</td>");
                                    out.println("<td>"+"<a href='deletefemale.jsp?uid="+rs.getString(1)+"'>Delete</a></td>");

          
                                out.println("</tr>");
                               }
                            %>


                                </tr>

                            </tbody>
<!--                            <tfoot class="table-primary">
                                <tr>
                                    <td colspan="9"></td>
                                    <td align="right">
                                        <strong><button type="button" class="btn btn-secondary btn-lg">CLEAR RECORD</button></strong>
                                    </td>


                                </tr>



                            </tfoot>-->
                        </table>

                    </section>
                    </body>
                    </html>

