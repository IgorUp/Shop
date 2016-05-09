<%--
  Created by IntelliJ IDEA.
  User: Igor
  Date: 13.04.2016
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page session="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="MediaCenter, Template, eCommerce">
    <meta name="robots" content="all">

    <title>Редактировать</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/bootstrap.min.css"/>">

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/main.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/dark-green.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/owl.carousel.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/owl.transitions.css"/>">
    <!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
    <link href="<c:url value="/resources/assets/css/lightbox.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/animate.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/rateit.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/bootstrap-select.min.css"/>">


    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/font-awesome.min.css"/>">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>

    <!-- Favicon -->
    <link rel="shortcut icon" href="<c:url value="/resources/assets/images/favicon.ico"/>">
    <![endif]-->
</head>
<body class="cnt-home">
<c:url value="/j_spring_security_logout" var="logoutUrl" />
<form action="${logoutUrl}" method="post" id="logoutForm">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}" />
</form>
<header class="header-style-1">

    <!-- ============================================== TOP MENU ============================================== -->
    <div class="top-bar animate-dropdown">
        <div class="container">
            <div class="header-top-inner">
                <div class="cnt-account">
                    <ul class="list-unstyled">
                        <li><a href="homeUser"><i class="icon fa fa-user"></i>Работа с пользователями</a></li>
                        <li><a href="homeManufacturer"><i class="icon fa fa-folder-open"></i>Работа с производителем</a></li>
                        <li><a href="homeProductName"><i class="icon fa fa-folder-open"></i>Работа с наименованиями продуктов</a></li>
                        <li><a href="homeProduct"><i class="icon fa fa-folder-open"></i>Работа с товаром</a></li>
                        <li><a href="homeOrder"><i class="icon fa fa-shopping-cart"></i>Работа с заказами</a></li>
                    </ul>
                </div><!-- /.cnt-account -->

                <div class="clearfix"></div>
            </div><!-- /.header-top-inner -->
        </div><!-- /.container -->
    </div><!-- /.header-top -->
    <!-- ============================================== TOP MENU : END ============================================== -->

    <!-- ============================================== NAVBAR ============================================== -->
    <div class="header-nav animate-dropdown">
        <div class="container">
            <div class="yamm navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">

                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="nav-bg-class">
                    <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
                        <div class="nav-outer">
                            <ul class="nav navbar-nav">
                                <li class="dropdown active">
                                    <a >Добро пожаловать, Админ!</a>
                                </li>







                            </ul><!-- /.navbar-nav -->
                            <div class="clearfix"></div>
                        </div><!-- /.nav-outer -->
                    </div><!-- /.navbar-collapse -->


                </div><!-- /.nav-bg-class -->
            </div><!-- /.navbar-default -->
        </div><!-- /.container-class -->

    </div><!-- /.header-nav -->
    <!-- ============================================== NAVBAR : END ============================================== -->

</header>

<div class="container">
    <div class="col-md-12 contact-title">

        <div align="center">
            <h1>Редактирование</h1>
            <form:form action="updateProductName" method="post" modelAttribute="product_name">
                <table>
                    <form:hidden path="id"/>
                    <tr>
                        <td>Название:</td>
                        <td><form:input path="product_name" pattern="[0-9A-Za-zА-Яа-яЁё]{3,}"/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Сохранить"></td>
                    </tr>
                </table>
            </form:form>
        </div>
    </div>
</div>

<footer id="footer" class="footer color-bg">



    <div class="copyright-bar">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-padding">
                <div class="copyright">
                    Copyright © 2016
                    <a href="/bsuir">O•P•I</a>
                    - Все права защищены
                </div>
            </div>

        </div>
    </div>

</footer>
<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="<c:url value="/resources/assets/js/jquery-1.11.1.min.js"/>"></script>

<script src="<c:url value="/resources/assets/js/bootstrap.min.js"/>"></script>

<script src="<c:url value="/resources/assets/js/bootstrap-hover-dropdown.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/owl.carousel.min.js"/>"></script>

<script src="<c:url value="/resources/assets/js/echo.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/jquery.easing-1.3.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/bootstrap-slider.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/jquery.rateit.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/assets/js/lightbox.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/bootstrap-select.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/wow.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/scripts.js"/>"></script>

<!-- For demo purposes – can be removed on production -->


<script>
    $(document).ready(function(){
        $(".changecolor").switchstylesheet( { seperator:"color"} );
        $('.show-theme-options').click(function(){
            $(this).parent().toggleClass('open');
            return false;
        });
    });

    $(window).bind("load", function() {
        $('.show-theme-options').delay(2000).trigger('click');
    });
</script>
<!-- For demo purposes – can be removed on production : End -->
</body>
</html>