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

		<title>Работа с товарами</title>

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
	<header class="header-style-1">

		<!-- ============================================== TOP MENU ============================================== -->
		<div class="top-bar animate-dropdown">
			<div class="container">
				<div class="header-top-inner">
					<div class="cnt-account">
						<ul class="list-unstyled">
							<li><a href="#"><i class="icon fa fa-user"></i>Работа с пользователями</a></li>
							<li><a href="admin_tovar.html"><i class="icon fa fa-folder-open"></i>Работа с товаром</a></li>
							<li><a href="admin_manufact.html"><i class="icon fa fa-sign-in"></i>Работа с продавцами</a></li>
							<li><a href="admin_order.html"><i class="icon fa fa-shopping-cart"></i>Работа с заказами</a></li>
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
				<h1>Список</h1>
				<h3><a href="newUser2">Новый товар</a></h3>
				<table class="table table-hover">
					<thead>
					<th data-type="number">No</th>
					<th data-type="number">Роль</th>
					<th data-type="string">Имя</th>
					<th data-type="string">Фамилия</th>
					<th data-type="string">Личный номер(номер в паспорте)</th>
					<th data-type="number">Телефон</th>
					<th data-type="string">Login</th>
					<th></th>
					</thead>
					<tbody>
					<c:forEach var="user" items="${listUser}" varStatus="status">
						<tr>
							<td>${status.index + 1}</td>
							<td>${user.role}</td>
							<td>${user.name}</td>
							<td>${user.surname}</td>
							<td>${user.password}</td>
							<td>${user.phone_number}</td>
							<td>${user.login}</td>
							<td>
								<a href="editUser?id_user=${user.id_user}">Редактировать</a>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="deleteUser?id_user=${user.id_user}">Удалить</a>
							</td>

						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<footer id="footer" class="footer color-bg">



		<div class="copyright-bar">
			<div class="container">
				<div class="col-xs-12 col-sm-6 no-padding">
					<div class="copyright">
						Copyright © 2016
						<a href="home.html">O•P•I</a>
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




