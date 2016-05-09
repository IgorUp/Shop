<%--
Created by IntelliJ IDEA.
User: Igor
Date: 13.04.2016
Time: 22:13
To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>График</title>

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

        <!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
        <!--[if lt IE 9]>
        <![endif]-->



		<style>
	.chart .pipe
{
    background: #eee;
    box-shadow: inset 3px 3px 3px 0px rgba(200, 200, 200, 1);
    webkit-box-shadow: inset 3px 3px 3px 0px rgba(200, 200, 200, 1);
}
.chart .pipe
{
    border-radius: 3px;
    height: 7px;
    margin-bottom: 15px;
    width: 100%;
}
.chart p
{
    margin: 0 0 5px;
}
.chart .pipe > div
{
    border: 1px solid red;
    border-radius: 3px;
    height: 5px;
	background: red;
}
	</style>
	</head>
	
    <body class="cnt-home">
	
		
	
		<!-- ============================================== HEADER ============================================== -->
    <header class="header-style-1">

        <!-- ============================================== TOP MENU ============================================== -->
        <div class="top-bar animate-dropdown">
            <div class="container">
                <div class="header-top-inner">
                    <div class="cnt-account">
                        <ul class="list-unstyled">
                            <%--<li><a href="account"><i class="icon fa fa-user"></i>Мой аккаунт</a></li>--%>
                            <%--<li><a href="shopping-cart"><i class="icon fa fa-shopping-cart"></i>Корзина</a></li>--%>
                            <%--<li><a href="signin"><i class="icon fa fa-sign-in"></i>Вход</a></li>--%>
                        </ul>
                    </div>
                    <!-- /.cnt-account -->

                    <div class="clearfix"></div>
                </div>
                <!-- /.header-top-inner -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /.header-top -->
        <!-- ============================================== TOP MENU : END ============================================== -->
        <div class="main-header">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
                        <!-- ============================================================= LOGO ============================================================= -->
                       <div class="logo">
                        <a href="/bsuir">

                            <img src="<c:url value="/resources/assets/images/1.png"/>" alt="" width="225">
                        </a>
                    </div>
                    <!-- /.logo -->
                        <!-- ============================================================= LOGO : END ============================================================= -->
                    </div>
                    <!-- /.logo-holder -->

                    <div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
                        <div class="contact-row">
                            <div class="phone inline">
                                <i class="icon fa fa-phone"></i>8(029) 705 21 21
   
                            </div>
                            <div class="contact inline">
                                <i class="icon fa fa-envelope"></i>shop@opi.com
   
                            </div>
                        </div>
                        <!-- /.contact-row -->
                        <!-- ============================================================= SEARCH AREA ============================================================= -->
                        <div class="search-area">
                            <form>
                                <div class="control-group">

                                    <ul class="categories-filter animate-dropdown">
                                        <li class="dropdown">

                                            <a class="dropdown-toggle">Поиск</a>

                                        </li>
                                    </ul>

                                    <input class="search-field" placeholder="Что искать?..." />

                                    <a class="search-button" href="#"></a>

                                </div>
                            </form>
                        </div>
                        <!-- /.search-area -->
                        <!-- ============================================================= SEARCH AREA : END ============================================================= -->
                    </div>
                    <!-- /.top-search-holder -->

                    <div class="col-xs-12 col-sm-12 col-md-3 animate-dropdown top-cart-row">
                        <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->

                        <%--<div class="dropdown dropdown-cart">--%>
                            <%--<a href="shopping-cart" class="dropdown-toggle lnk-cart">--%>
                                <%--<div class="items-cart-inner">--%>
                                    <%--<div class="total-price-basket">--%>
                                        <%--<span class="lbl">Корзина</span>--%>
                                        <%--<span class="total-price"></span>--%>
                                    <%--</div>--%>
                                    <%--<div class="basket">--%>
                                        <%--<i class="glyphicon glyphicon-shopping-cart"></i>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</a>--%>
                        <%--</div>--%>
                        <!-- /.dropdown-cart -->
                        <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->
                    </div>
                    <!-- /.top-cart-row -->
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->

        </div>
        <!-- /.main-header -->
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
			<li class="dropdown yamm-fw">
				<a href="/bsuir">Главная</a>
				<ul class="dropdown-menu">
						<div class="yamm-content">
                            </div>
                </ul>
			</li>
			<li class="dropdown">
				<a href="about">О Нас</a>
			</li>
			
			<li class="dropdown">
				<a href="delivery">Доставка</a>
			</li>

			<li class="dropdown">
				<a href="news">Новости</a>
			</li>

			<li class="dropdown">
				<a href="contact">Контакты</a>
			</li>
            <li class="dropdown">
                <a href="chart">Статистика</a>
            </li><li class="dropdown">
            <a href="test">Тест</a>
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

<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content outer-top-bd">
	<div class="container">
		<div class="row inner-bottom-sm">
			<div class="contact-page">
             <center><b style="font-size:20px;"> СТАТИСТИКА </b> <br /><br /></center>
                <div id="oil" style="width: 800px; height: 400px;"></div>
<div>
</div>
                <div id="air" style="width: 800px; height: 400px;"></div>
</div><!-- /.contact-page -->
		</div><!-- /.row -->
		<!-- ============================================== BRANDS CAROUSEL ============================================== -->

<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->
</div><!-- /.body-content -->
<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="footer color-bg">
	  <div class="links-social inner-top-sm">
        <div class="container">
            <div class="row">
            	<div class="col-xs-12 col-sm-6 col-md-3">
            		 <!-- ============================================================= CONTACT INFO ============================================================= -->
<div class="contact-info">
    <div class="footer-logo">
        <div class="logo">
            <a href="/bsuir">

                <img src="<c:url value="/resources/assets/images/1.png"/>" alt="" width="225">

            </a>
        </div><!-- /.logo -->
    
    </div><!-- /.footer-logo -->

     <div class="module-body m-t-20">
        
    
        <div class="social-icons">
            
        <a href="https://www.facebook.com/oli.essen" class='active'><i class="icon fa fa-facebook"></i></a>
        <a href="https://twitter.com/ololoji" class='active'><i class="icon fa fa-twitter"></i></a>
        <a href="https://www.instagram.com/oloji_/" class='active'><i class="icon fa fa-linkedin"></i></a>

        </div><!-- /.social-icons -->
    </div><!-- /.module-body -->

</div><!-- /.contact-info -->
<!-- ============================================================= CONTACT INFO : END ============================================================= -->            	</div><!-- /.col -->

            	<div class="col-xs-12 col-sm-6 col-md-3">
            		 <!-- ============================================================= CONTACT TIMING============================================================= -->
<div class="contact-timing">
	<div class="module-heading">
		<h4 class="module-title">Время работы</h4>
	</div><!-- /.module-heading -->

	<div class="module-body outer-top-xs">
		<div class="table-responsive">
			<table class="table">
				<tbody>
					<tr><td>Понедельник-Пятница:</td><td class="pull-right">08.00 - 18.00</td></tr>
					<tr><td>Суббота:</td><td class="pull-right">09.00 - 20.00</td></tr>
					<tr><td>Воскресенье:</td><td class="pull-right">10.00 - 20.00</td></tr>
				</tbody>
			</table>
		</div><!-- /.table-responsive -->
		<p class='contact-number'>Горячая линия: 8(029) 705 21 21</p>
	</div><!-- /.module-body -->
</div><!-- /.contact-timing -->
<!-- ============================================================= CONTACT TIMING : END ============================================================= -->            	</div><!-- /.col -->

            	<div class="col-xs-12 col-sm-6 col-md-3">
            		      	</div><!-- /.col -->
            	<div class="col-xs-12 col-sm-6 col-md-3">
            		 <!-- ============================================================= INFORMATION============================================================= -->
<div class="contact-information">
	<div class="module-heading">
		<h4 class="module-title">Информация</h4>
	</div><!-- /.module-heading -->

	<div class="module-body outer-top-xs">
        <ul class="toggle-footer" style="">
            <li class="media">
                <div class="pull-left">
                     <span class="icon fa-stack fa-lg">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-map-marker fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="media-body">
                    <p>Беларусь, город Минск, проспект Независимости , д. 1</p>
                </div>
            </li>

              <li class="media">
                <div class="pull-left">
                     <span class="icon fa-stack fa-lg">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-mobile fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="media-body">
                    <p>8(029) 705 21 21<br>8(029) 705 21 22</p>
                </div>
            </li>

              <li class="media">
                <div class="pull-left">
                     <span class="icon fa-stack fa-lg">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-envelope fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
                <div class="media-body">
                    <span><a href="#">shop@opi.com</a></span><br>
                </div>
            </li>
              
            </ul>
    </div><!-- /.module-body -->
</div><!-- /.contact-timing -->
<!-- ============================================================= INFORMATION : END ============================================================= -->            	</div><!-- /.col -->
     </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.links-social -->


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
</footer>>
<!-- ============================================================= FOOTER : END============================================================= -->




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
        <script src="https://www.google.com/jsapi"></script>
        <!-- For demo purposes – can be removed on production -->

<script>
   google.load("visualization", "1", {packages:["corechart"]});
   google.setOnLoadCallback(drawChart);
   function drawChart() {
    var data = google.visualization.arrayToDataTable([
     ['Производители', 'Продажи'],
     ['Samsung',     23.21],
     ['Apple', 13.53],
     ['Fujifilm', 9.36],
     ['HTC', 12.47],
     ['Huawei', 19.65],
     ['LG',   16.59],
     ['Horizont', 5.19]
    ]);
    var options = {
     title: 'Количество продаж по производителям',
     is3D: true,
    };
    var chart = new google.visualization.PieChart(document.getElementById('air'));
     chart.draw(data, options);
   }
  </script>
	<script>
   google.load("visualization", "1", {packages:["corechart"]});
   google.setOnLoadCallback(drawChart);
   function drawChart() {
    var data = google.visualization.arrayToDataTable([
     ['Наименование продукции', 'Количество проданых товаров'],
     ['Компьютеры', 40],
     ['Телефоны', 75],
     ['Телевизоры', 31],
     ['Фото- и Видеокамеры', 26],
     ['Аксессуары', 34]
    ]);
    var options = {
     title: 'Количество продаж',
     hAxis: {title: 'Наименование продукции'},
     vAxis: {title: 'Штук'}
    };
    var chart = new google.visualization.ColumnChart(document.getElementById('oil'));
    chart.draw(data, options);
   }
  </script>
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