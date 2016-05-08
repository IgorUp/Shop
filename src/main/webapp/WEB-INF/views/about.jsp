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
         <!-- ДЛя рассрочки -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css"
            integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd"
            crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js"
            integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7"
            crossorigin="anonymous"></script>
         <!-- ДЛя рассрочки -->
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>О Нас</title>

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
<body ng-app class="cnt-home" >
	
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
			</div><!-- /.cnt-account -->

			<div class="clearfix"></div>
		</div><!-- /.header-top-inner -->
	</div><!-- /.container -->
</div><!-- /.header-top -->
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

<!-- ============================================================= LOGO : END ============================================================= -->				
</div><!-- /.logo-holder -->

				<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
					<div class="contact-row">
    <div class="phone inline">
        <i class="icon fa fa-phone"></i> 8(029) 705 21 21
    </div>
    <div class="contact inline">
        <i class="icon fa fa-envelope"></i> shop@opi.com
    </div>
</div><!-- /.contact-row -->
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
</div><!-- /.top-search-holder -->

				<div class="col-xs-12 col-sm-12 col-md-3 animate-dropdown top-cart-row">
					<!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->

	<div class="dropdown dropdown-cart">
		<a href="shopping-cart" class="dropdown-toggle lnk-cart" >
			<div class="items-cart-inner">
				<div class="total-price-basket">
					<span class="lbl">Корзина</span>
					<span class="total-price">

					</span>
				</div>
				<div class="basket">
					<i class="glyphicon glyphicon-shopping-cart"></i>
				</div>
		    </div>
		</a>
	</div><!-- /.dropdown-cart -->
<!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->				
</div><!-- /.top-cart-row -->
			</div><!-- /.row -->

		</div><!-- /.container -->

	</div><!-- /.main-header -->

	<!-- ============================================== NAVBAR ============================================== -->
<div class="header-nav animate-dropdown">
    <div class="container">
        <div class="yamm navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <span class="sr-only">Toggle navigation</span>
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
				<a href="home">Главная</a>
				<ul class="dropdown-menu">
						<div class="yamm-content"> 
						</div>
				</ul>
			</li>
		
			<li class="dropdown active">
				<a href="about">О Нас</a>
			</li>
			
			<li class="dropdown">
				<a href="delivery">Доставка</a>
			</li>

			<li class="dropdown ">
				<a href="news">Новости</a>
			</li>

			<li class="dropdown">
				<a href="contact">Контакты</a>
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
<div class="body-content outer-top-bd">
	<div class="container">
		<div class="checkout-box inner-bottom-sm">
			<div class="row">
				<div class="col-md-8">
					<div class="panel-group checkout-steps" id="accordion">
					
						<!-- checkout-step-01  -->
						<div class="panel panel-default checkout-step-01">
	<!-- panel-heading -->
		<div class="panel-heading">
    	<h4 class="unicase-checkout-title">
	        <a data-toggle="collapse" class="" data-parent="#accordion" href="#collapseOne">
	          <span>1</span>Почему нужно выбрать именно нас ?
	        </a>
	     </h4>
    </div>
    <!-- panel-heading -->

	<div id="collapseOne" class="panel-collapse collapse in">
	    <div class="panel-body">
                <p>Мы открыты и гибки при работе с клиентами. Мы продаем только качественную технику, легально ввезенную в нашу страну. Выбирая нас вы получаете отличный сервис и качественное обслуживание. Мы гарантируем надежность продаваемой нами техники. </p>
			</div>			
		</div>
		<!-- panel-body  -->

	</div><!-- row -->
						<!-- checkout-step-01  -->
						
					    <!-- checkout-step-02  -->
					  	<div class="panel panel-default checkout-step-02">
						    <div class="panel-heading">
						      <h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseTwo">
						          <span>2</span>Как все начиналось ?
						        </a>
						      </h4>
						    </div>
						    <div id="collapseTwo" class="panel-collapse collapse">
						      <div class="panel-body">
						        Наша компания была создана в 2011 году как один магазин. Постепенно мы стали расширять нашу сеть, и в 2013 году мы создали этот интернет-магазин. С тех пор количество наших клиентов возрастает с каждым днем. Мы будем рады выдеть Вас в их числе!
						      </div>
						    </div>
					  	</div>
					  	<!-- checkout-step-02  -->

						<!-- checkout-step-03  -->
					  	<div class="panel panel-default checkout-step-03">
						    <div class="panel-heading">
						      <h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseThree">
						       		<span>3</span>С кем мы сотрудничаем ?
						        </a>
						      </h4>
						    </div>
						    <div id="collapseThree" class="panel-collapse collapse">
						      <div class="panel-body">
						        Среди наших партнеров числятся такие известные бренды как Samsung, Apple, Microsoft. Мы готовы сотрудничать также с молодыми и перспективными огранизациями!
						      </div>
						    </div>
					  	</div>
					  	<!-- checkout-step-03  -->

						<!-- checkout-step-04  -->
					    <div class="panel panel-default checkout-step-04">
						    <div class="panel-heading">
						      <h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseFour">
						        	<span>4</span>Почему нам нужно доверять ?
						        </a>
						      </h4>
						    </div>
						    <div id="collapseFour" class="panel-collapse collapse">
							    <div class="panel-body">
						        Мы предоставляем гарантию на любой наш товар. Наши сотрудники - высококвалифицированные специалисты, а наши партнеры надежны и ответственны.
						      </div>
					    	</div>
						</div>
						<!-- checkout-step-04  -->

						<!-- checkout-step-05  -->
					  	<div class="panel panel-default checkout-step-05">
						    <div class="panel-heading">
						      <h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseFive">
						        	<span>5</span>Что делать, если товар сломался?
						        </a>
						      </h4>
						    </div>
						    <div id="collapseFive" class="panel-collapse collapse">
						     <div class="panel-body">
						        Если товар сломался, Вы можете обратиться в любой сервисный центр наших партнеров. При наличии действующей гарантии мы заменим Ваш товар или вернем деньги. Также Вы можете позвонить по телефону, указанному на нашем сайте, и наши специалисты расскажут Вам, как быть. 
						      </div>
						    </div>
					    </div>
					    <!-- checkout-step-05  -->

						<!-- checkout-step-06  -->
					  	<div class="panel panel-default checkout-step-06">
						    <div class="panel-heading">
						      <h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseSix">
						        	<span>6</span>Куда обратиться за консультацией?
						        </a>
						      </h4>
						    </div>
					    	<div id="collapseSix" class="panel-collapse collapse">
					      		<div class="panel-body">
						        За консультацией Вы можете обратиться в любой сервисный центр наших партнеров. Также Вы можете набрать номер телефона, указанный на нашем сайте, и наши специалисты помогут Вам.
						      </div>
					    	</div>
					  	</div>
					  	<!-- checkout-step-06  -->
						
                        <!-- checkout-step-07  -->
					  	<div class="panel panel-default checkout-step-07">
						    <div class="panel-heading">
						      <h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseSeven">
						        	<span>7</span>Могу ли я взять рассрочку?
						        </a>
						      </h4>
						    </div>
					    	<div id="collapseSeven" class="panel-collapse collapse">
					      		<div class="panel-body">
						      
                                     <small>Мы предоставляем нашим клиентам покупку техники в рассрочку. Вам достаточно просто ввести сумму платежа и желаемое количество месяцев для оплаты, и Вы получите сумму, которую Вам необходимо будет выплачивать каждый месяц. За получением рассрочки обращайтесь в фирменные магазины или по телефону, указанному на сайте.
                                     </small>
                                      <br /><br />
                    <label><b>Сумма покупки</b></label><br />
                    <input type="number"ng-model="cost" /><br />
                    <label><b>Кол-во месяцев</b></label><br />
                    <input type="number" step="1" min="2" ng-model="qty" ng-init="$scope.qty='1'"/><br />
                     <span ng-show="cost && qty" ><b>Оплата в месяц составит</b> {{(1.1*cost) / qty}} <b>Br</b></span><br /> 
                                  </div>
					    	</div>
					  	</div>
					  	<!-- checkout-step-07  -->

					</div><!-- /.checkout-steps -->
				</div>
				<div class="col-md-4">
							</div>
			</div><!-- /.row -->
		</div><!-- /.checkout-box -->
		</div>
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
            <a href="home">
                
                             <img src="<c:url value="/resources/assets/images/1.png"/>" alt="" width="215">

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
<!-- ============================================================= CONTACT INFO : END ============================================================= -->            
	</div><!-- /.col -->

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
<!-- ============================================================= CONTACT TIMING : END ============================================================= -->            	
</div><!-- /.col -->

            	<div class="col-xs-12 col-sm-6 col-md-3">
            		 <!-- ============================================================= LATEST TWEET============================================================= -->

<!-- ============================================================= LATEST TWEET : END ============================================================= -->            	
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
<!-- ============================================================= INFORMATION : END ============================================================= -->            	
</div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.links-social -->


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
	<!-- For demo purposes – can be removed on production -->

	
	<script>
	    $(document).ready(function() {
	        $(".changecolor").switchstylesheet({ seperator: "color" });
	        $('.show-theme-options').click(function() {
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