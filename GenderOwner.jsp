<%-- 
    Document   : GenderOwner
    Created on : Apr 26, 2022, 2:14:31 AM
    Author     : hkhar
--%>

<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>OWNER-Male or Female</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="images/favicon1.png">
        <link rel="stylesheet" href="css/GenderOwner.css">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        
        <%
          if(session.getAttribute("oname")==null)
                  {
                   response.sendRedirect("ownerLogin.html");   
                  }
        %>
        <section id="forNavigation">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <a class="navbar-brand" href="#">WELCOME <%=" "+session.getAttribute("oname")%></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="nav navbar-nav ml-auto">
                       
                        <li class="nav-item">

                            <a class="nav-link active" href="logout"><button type="button" class="btn btn-dark">LOGOUT</button></a>
                        </li>
                    </ul>        
                    </section>
                    <section id="divideColor">


                        <table class="table table-hover ">
                            <thead>
                                <tr>
                                    <th class="table-info">
                                        <div>
                                            <a href="detailsOwner.jsp"><img class="genderImage"  src="images/maleSymbol.png" alt="male_data"></a>
                                        </div> 
                         

                            </th>
                            <th class="table-danger">
                                <div>
                                    <a href="detailsOwnerFemale.jsp"><img class="genderImage" src="images/femalSymbol.png" alt="female_data"></a>  
                                </div>


                           
                            </th>

                            </thead>

                        </table>
                    </section>

                    </body>
                    </html>

