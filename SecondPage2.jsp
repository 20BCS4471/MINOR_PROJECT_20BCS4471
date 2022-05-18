<%-- 
    Document   : SecondPage2
    Created on : Apr 25, 2022, 10:50:02 PM
    Author     : hkhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>Female-ClothCart </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/ClothCart.css">
        <link rel="icon" href="images/favicon1.png">
    </head> 
    <body>
        <section id="forNavigation">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <a class="navbar-brand" href="#">Welcome <%=" "+session.getAttribute("name")%></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="nav navbar-nav ml-auto">
<!--                          <li class="nav-item active">
                            <label>UID</label>
                            <input type="text" name="uid" value="<%= session.getAttribute("uid")%>" readonly>
                        </li>-->
                        <li class="nav-item active">
                            <a href="GenderOwner.html"><button type="button" class="nav-link btn btn-dark" >Home </button></a>
                        </li>

<!--                        <li class="nav-item">
                            <a class="nav-link active" href="#">Change Password</a>
                        </li>-->
                        <li class="nav-item">

                          <a class="nav-link active" href="logout"><button type="button" class="btn btn-dark">LOGOUT</button></a>
                        </li>
                    </ul>        
                    </section>
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
                        <div class="welCome">
                            <h1 class="font1">WELCOME TO LAUNDRY SERVICE....</h1>

                        </div>


                    </section>
                    <form action="femalecart" method="post"> 



                        <section id ="ClothcartfemaleUser">

                            <div class="container-fluid mt-5">
                                <h2 class="mb-5 text-center"Cloth Cart ></h2>
                                <div class="row justify-content-center">
                                    <div class="col-md-8">
                                        <div class="table-responsive">
                                            <table id="myTable" class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Cloth</th>
                                                        <th>Name</th>
                                                        <th>Quantity</th>
                                                        <th>Price</th>
                                                        <th class="text-right">
                                                            <span id="amount" class="amount">
                                                                Amount
                                                            </span>
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="product-img">
                                                                <div class="img-prdct">
                                                                    <img src="images/woman-clothes.png">
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td><p>SKIRT</p></td>
                                                        <td>
                                                            <div class="button-container">
                                                                <button class="cart-qty-plus" type="button" value="+">+</button>
                                                                <input type="text" name="p1" min="0" class="qty form-control" value="0"/>
                                                                <button class="cart-qty-minus" type="button" value="-">-</button>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <input type="text" value="10" class="price form-control" disabled>
                                                        </td>
                                                        <td align="right">Rs<span id="amount" class="amount">0</span>
                                                        </td>
                                                    </tr>
                                                    <!--cloth 1st-->
                                                    <tr>
                                                        <td>
                                                            <div class="product-img">
                                                                <div class="img-prdct">
                                                                    <img src="images/polo-shirt.png">
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td><p>T-shirt</p></td>
                                                        <td>
                                                            <div class="button-container">
                                                                <button class="cart-qty-plus" type="button" value="+">+</button>
                                                                <input type="text" name="p2" min="0" class="qty form-control" value="0"/>
                                                                <button class="cart-qty-minus" type="button" value="-">-</button>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <input type="text" value="5" class="price form-control" disabled>
                                                        </td>
                                                        <td align="right">Rs<span id="amount" class="amount">0</span>
                                                        </td>
                                                    </tr>
                                                    <!--cloth 2nd-->
                                                    <tr>
                                                        <td>
                                                            <div class="product-img">
                                                                <div class="img-prdct">
                                                                    <img src="images/jacket.png">
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td><p>JACKETS</p></td>
                                                        <td>
                                                            <div class="button-container">
                                                                <button class="cart-qty-plus" type="button" value="+">+</button>
                                                                <input type="text" name="p3" min="0" class="qty form-control" value="0"/>
                                                                <button class="cart-qty-minus" type="button" value="-">-</button>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <input type="text" value="14" class="price form-control" disabled>
                                                        </td>
                                                        <td align="right">Rs<span id="amount" class="amount">0</span>
                                                        </td>
                                                    </tr>
                                                    <!--cloth 3rd-->
                                                    <tr>
                                                        <td>
                                                            <div class="product-img">
                                                                <div class="img-prdct">
                                                                    <img src="images/loosepants.png">
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td><p>PANTS</p></td>
                                                        <td>
                                                            <div class="button-container">
                                                                <button class="cart-qty-plus" type="button" value="+">+</button>
                                                                <input type="text" name="p4" min="0" class="qty form-control" value="0"/>
                                                                <button class="cart-qty-minus" type="button" value="-">-</button>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <input type="text" value="10" class="price form-control" disabled>
                                                        </td>
                                                        <td align="right">Rs<span id="amount" class="amount">0</span>
                                                        </td>
                                                    </tr>
                                                    <!--cloth 4th-->

                                                </tbody>
                                                <tfoot>
                                                    <tr>
                                                        <td colspan="4"></td>
                                                        <td align="right">
                                                            <strong>Total=Rs<span id="total" class="total">0</span></strong>
                                                        </td>


                                                    </tr>



                                                </tfoot>
                                            </table>


                                            <button type="submit" class="btn btn-dark btn-lg">Proceed To Pay</button>


                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </section>

                    </form>
                    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
                    <script src="./ClothCart.js"></script>
                    </body> 
                    </html>
