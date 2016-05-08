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
<!DOCTYPE html> <!--все ссылки на подключение исправили-->
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

    <title>Каталог телевизоров</title>

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
</head>

<body class="cnt-home" >



    <!-- ============================================== HEADER ============================================== -->
    <header class="header-style-1">

        <!-- ============================================== TOP MENU ============================================== -->
        <div class="top-bar animate-dropdown">
            <div class="container">
                <div class="header-top-inner">
                    <div class="cnt-account">
                        <ul class="list-unstyled">
                            <li><a href="shopping-cart"><i class="icon fa fa-shopping-cart"></i>Корзина</a></li>
                            <li><a href="signin"><i class="icon fa fa-sign-in"></i>Вход</a></li>
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
                        <a href="home">

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

                        <div class="dropdown dropdown-cart">
                            <a href="shopping-cart" class="dropdown-toggle lnk-cart">
                                <div class="items-cart-inner">
                                    <div class="total-price-basket">
                                        <span class="lbl">Корзина</span>
                                        <span class="total-price"></span>
                                    </div>
                                    <div class="basket">
                                        <i class="glyphicon glyphicon-shopping-cart"></i>
                                    </div>
                                </div>
                            </a>
                        </div>
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
                                    <li class="active dropdown yamm-fw">
                                        <a href="home">Главная</a>
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


                                </ul><!-- /.navbar-nav -->
                                <div class="clearfix"></div>
                            </div>
                            <!-- /.nav-outer -->
                        </div>
                        <!-- /.navbar-collapse -->


                    </div>
                    <!-- /.nav-bg-class -->
                </div>
                <!-- /.navbar-default -->
            </div>
            <!-- /.container-class -->

        </div>
        <!-- /.header-nav -->
        <!-- ============================================== NAVBAR : END ============================================== -->

    </header>

    <!-- ============================================== HEADER : END ============================================== -->
    <div class="body-content outer-top-xs" id="top-banner-and-menu">
        <div class="container">
            <div class="row">
                <!-- ============================================== SIDEBAR ============================================== -->
                <div class="col-xs-12 col-sm-12 col-md-3 sidebar">

                    <!-- ================================== TOP NAVIGATION ================================== -->
                    <div class="side-menu animate-dropdown outer-bottom-xs">
                        <div class="head"><i class="icon fa fa-align-justify fa-fw"></i>Категории</div>
                        <nav class="yamm megamenu-horizontal" role="navigation">
                            <ul class="nav">
                                <li class="dropdown menu-item">
                                    <a href="catalog_comp" ><i class="icon fa fa-apple fa-fw"></i>Компьютер</a>
                                    
                                </li>
                                <!-- /.menu-item -->

                                <li class="dropdown menu-item">
                                    <a href="catalog_tel" ><i class="icon fa fa-mobile fa-fw"></i>Телефон</a>
                                    <!-- ================================== MEGAMENU VERTICAL ================================== -->
                                   
                                    <!-- ================================== MEGAMENU VERTICAL ================================== -->
                                </li>
                                <!-- /.menu-item -->

                                <li class="dropdown menu-item">
                                    <a href="catalog_TV" ><i class="icon fa fa-desktop fa-fw"></i>Телевизор</a>
                                   
                                </li>
                                <!-- /.menu-item -->

                                <li class="dropdown menu-item">
                                    <a href="catalog_photo_video"><i class="icon fa fa-camera fa-fw"></i>Фото- и Видеокамера</a>
                                    
                                    <!-- /.dropdown-menu -->
                                </li>
                                <!-- /.menu-item -->

                                <li class="dropdown menu-item">
                                    <a href="catalog_acses" ><i class="icon fa fa-headphones fa-fw"></i>Аксессуары</a>

                                </li>
                                <!-- /.menu-item -->

                            </ul>
                            <!-- /.nav -->
                        </nav>
                        <!-- /.megamenu-horizontal -->
                    </div>
                    <!-- /.side-menu -->
                    <!-- ================================== TOP NAVIGATION : END ================================== -->
                </div>
                <!-- /.sidemenu-holder -->
                <!-- ============================================== SIDEBAR : END ============================================== -->
			<div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
				<div class="input-group"> <span class="input-group-addon">Поиск</span>

				<input id="filter" type="text" class="form-control" placeholder="Введите ключевое слово...">
				</div>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>Изображение</th>
									<th>Производитель</th>
									<th>Модель</th>
									<th>Стоимость</th>
									<th>Сделать заказ</th>
								</tr>
								</thead>
							<tbody class="searchable">
                            <c:forEach var="ups" items="${listTest}" varStatus="status">
                                <tr>
                                    <td><img src="<c:url value="/resources/assets/images/${ups.picture}"/>" alt="" width="225"></td>
                                    <td>${ups.manufacturer_name}</td> <!--МЫ ХЗ,НО ПО ПЛАНУ ДОЛЖНО РАБОТАТЬ!ПОПРОБУЙ -->
                                    <td>${ups.model}</td>
                                    <td>${ups.cost}</td>
                                    <td>
                                        <a href="#">Заказать</a> <!--НЕ ЗНАЕМ КАКАЯ ССЫЛКА!!!!ТУТ ПЕРЕНОС ДАННЫХ В ТАБЛИЦУ КОРЗИНА.ЕСЛИ ЮЗЕР НЕ ЗАРЕГАННЫЙ.ТО ПУСТЬ ВЫЛАЗИТ АЛЕРТ.НУ ИЛИ САМ ЧТО-НИБУДЬ ПРИДУМАЙ-->
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
						</table>

			</div>
			</div>
            </div>
            <!-- /.row -->
            
        </div>
        <!-- /.container -->
    </div>
    <!-- /#top-banner-and-menu -->




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
                                    <a href="home">

                                         <img src="<c:url value="/resources/assets/images/1.png"/>" alt="" width="225">
                                    </a>
                                </div>
                                <!-- /.logo -->

                            </div>
                            <!-- /.footer-logo -->

                            <div class="module-body m-t-20">


                                <div class="social-icons">

                                    <a href="https://www.facebook.com/oli.essen" class='active'><i class="icon fa fa-facebook"></i></a>
                                    <a href="https://twitter.com/ololoji" class='active'><i class="icon fa fa-twitter"></i></a>
                                    <a href="https://www.instagram.com/oloji_/" class='active'><i class="icon fa fa-linkedin"></i></a>

                                </div>
                                <!-- /.social-icons -->
                            </div>
                            <!-- /.module-body -->

                        </div>
                        <!-- /.contact-info -->
                        <!-- ============================================================= CONTACT INFO : END ============================================================= -->
                    </div>
                    <!-- /.col -->

                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <!-- ============================================================= CONTACT TIMING============================================================= -->
                        <div class="contact-timing">
                            <div class="module-heading">
                                <h4 class="module-title">Время работы</h4>
                            </div>
                            <!-- /.module-heading -->

                            <div class="module-body outer-top-xs">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td>Понедельник-Пятница:</td>
                                                <td class="pull-right">08.00 - 18.00</td>
                                            </tr>
                                            <tr>
                                                <td>Суббота:</td>
                                                <td class="pull-right">09.00 - 20.00</td>
                                            </tr>
                                            <tr>
                                                <td>Воскресенье:</td>
                                                <td class="pull-right">10.00 - 20.00</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                                <p class='contact-number'>Горячая линия: 8(029) 705 21 21</p>
                            </div>
                            <!-- /.module-body -->
                        </div>
                        <!-- /.contact-timing -->
                        <!-- ============================================================= CONTACT TIMING : END ============================================================= -->
                    </div>
                    <!-- /.col -->

                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <!-- ============================================================= LATEST TWEET============================================================= -->

                        <!-- ============================================================= LATEST TWEET : END ============================================================= -->
                    </div>
                    <!-- /.col -->

                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <!-- ============================================================= INFORMATION============================================================= -->
                        <div class="contact-information">
                            <div class="module-heading">
                                <h4 class="module-title">Информация</h4>
                            </div>
                            <!-- /.module-heading -->

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
                                            <p>8(029) 705 21 21<br>
                                                8(029) 705 21 22</p>
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
                            </div>
                            <!-- /.module-body -->
                        </div>
                        <!-- /.contact-timing -->
                        <!-- ============================================================= INFORMATION : END ============================================================= -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /.links-social -->


        <div class="copyright-bar">
            <div class="container">
                <div class="col-xs-12 col-sm-6 no-padding">
                    <div class="copyright">
                        Copyright © 2016
                   
                        <a href="home">O•P•I</a>
                        - Все права защищены
               
                    </div>
                </div>

            </div>
        </div>
		</footer>
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

    <!-- For demo purposes – can be removed on production -->


		<script>
	function reloadFwWl0jYUG(){ 
	var sc = document.getElementById('scFwWl0jYUG');
	if (sc) sc.parentNode.removeChild(sc);
	sc = document.createElement('script');
	sc.type = 'text/javascript';
	sc.charset = 'UTF-8';
	sc.async = true;
	sc.id='scFwWl0jYUG';
	sc.src = 'http://freecurrencyrates.com/ru/widget-vertical?iso=USDEURRUBBYR&df=2&p=FwWl0jYUG&v=fits&source=nbrb&width=1000&width_title=0&firstrowvalue=1&thm=aaaaaa,C9C9C9,BBBBBB,dddddd,444444,cccccc,f8f8f8,3383BB,000000&title=%D0%9A%D0%BE%D0%BD%D0%B2%D0%B5%D1%80%D1%82%D0%B5%D1%80%20%D0%B2%D0%B0%D0%BB%D1%8E%D1%82&tzo=-180';
	var div = document.getElementById('gcw_mainFwWl0jYUG');
	div.parentNode.insertBefore(sc, div);
	} 
	reloadFwWl0jYUG(); 
	</script>
	
        <script>
            $(document).ready(function () {
                $(".changecolor").switchstylesheet({ seperator: "color" });
                $('.show-theme-options').click(function () {
                    $(this).parent().toggleClass('open');
                    return false;
                });
            });

            $(window).bind("load", function () {
                $('.show-theme-options').delay(2000).trigger('click');
            });
	</script>
	
	<script>
	
				 $(document).ready(function () {

				(function ($) {

					$('#filter').keyup(function () {

						var rex = new RegExp($(this).val(), 'i');
						$('.searchable tr').hide();
						$('.searchable tr').filter(function () {
							return rex.test($(this).text());
						}).show();

					})

				}(jQuery));

			});
	</script>
        <!-- For demo purposes – can be removed on production : End -->
</body>
</html>
