<%-- 
    Document   : NavBarBackColor
    Created on : Nov 10, 2018, 9:16:48 PM
    Author     : Mild-TN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
        <link rel="stylesheet" href="include/css/style-page.css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css"/>
    </head>
    <style>
        #navbar-ProductList{
            background-color: #333;
        }
        i{
            margin-left: 20px;
            margin-right: 20px;
        }
        .fa-cart-plus{
            margin-left: 20px;
            margin-right: 20px;
        }
    </style>
    <body>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <nav class="navbar navbar-expand-lg sticky-top" id="navbar-ProductList">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="HomePage.jsp">Home<span class="sr-only"></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ShowProductServlet">Product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search">
                    <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class="fas fa-search"></i></button>
                </form>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <c:choose>
                            <c:when test="${message == 'Login'}">
                                <a class="nav-link" href="LogoutServlet">Logout</a>
                            </c:when>
                            <c:when test="${message == null}">
                                <a class="nav-link" href="Login.jsp">Login</a>
                            </c:when>
                        </c:choose>
                    </li>     
                </ul>
            </div>
        </nav>
    </body>
</html>