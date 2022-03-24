<%@page import="model.Categorie"%>
<%@page import="model.Plat"%>
<% Plat[] listePlat = (Plat[]) request.getAttribute("plat"); %>
<% Categorie[] listeCategorie = (Categorie[]) request.getAttribute("categorie");%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
	<title>Home page | FOOD</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Fav icon -->
	<link rel="shortcut icon" href="img/favicon.ico">

	<!-- Font -->
	<link href='https://fonts.googleapis.com/css?family=Lato:400,400italic,900,700,700italic,300' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700%7CDancing+Script%7CMontserrat:400,700%7CMerriweather:400,300italic%7CLato:400,700,900' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Cantata+One' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700,600' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,300,500,700' rel='stylesheet' type='text/css'>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- Magnific Popup -->
	<link href="css/magnific-popup.css" rel="stylesheet">

	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/skin-lblue.css">

	<link rel="stylesheet" href="css/ecommerce.css">

	<!-- Owl carousel -->
	<link href="css/owl.carousel.css" rel="stylesheet">

	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="css/responsive.css">
	<link rel="stylesheet" type="text/css" href="css/revolutionslider_settings.css" media="screen" />

	<script src="js/vendor/modernizr-2.6.2.min.js"></script>
        <style>
            .categorie{
                width: 100%;
                transition: 300ms;
            }
            .categorie:hover{
                background-color: #323a45;
                color: white;
            }
            .categorie a:hover{
                color: white;
            }
        </style>
</head>

<body class="style-14">
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->


<!-- start header -->
<header>
	<!-- Top bar starts -->
	<div class="top-bar">
		<div class="container">

			<!-- Contact starts -->
			<div class="tb-contact pull-left">
				<!-- Email -->
				<i class="fa fa-envelope color"></i> &nbsp; <a href="mailto:contact@domain.com">contact@domain.com</a>
				&nbsp;&nbsp;
				<!-- Phone -->
				<i class="fa fa-phone color"></i> &nbsp; +1 (342)-(323)-4923
			</div>
			<!-- Contact ends -->

			<!-- Shopping kart starts -->
			<div class="tb-shopping-cart pull-right">
				<!-- Link with badge -->
				<a href="#" class="btn btn-white btn-xs b-dropdown"><i class="fa fa-shopping-cart"></i> <i class="fa fa-angle-down color"></i> <span class="badge badge-color">2</span></a>
				<!-- Dropdown content with item details -->
				<div class="b-dropdown-block">
					<!-- Heading -->
					<h4><i class="fa fa-shopping-cart color"></i> Your Items</h4>
					<ul class="list-unstyled">
						<!-- Item 1 -->
						<li>
							<!-- Item image -->
							<div class="cart-img">
								<a href="#"><img src="img/ecommerce/view-cart/1.png" alt="" class="img-responsive" /></a>
							</div>
							<!-- Item heading and price -->
							<div class="cart-title">
								<h5><a href="#">Premium Quality Shirt</a></h5>
								<!-- Item price -->
								<span class="label label-color label-sm">$1,90</span>
							</div>
							<div class="clearfix"></div>
						</li>
						<!-- Item 2 -->
						<li>
							<div class="cart-img">
								<a href="#"><img src="img/ecommerce/view-cart/2.png" alt="" class="img-responsive" /></a>
							</div>
							<div class="cart-title">
								<h5><a href="#">Premium Quality Shirt</a></h5>
								<span class="label label-color label-sm">$1,20</span>
							</div>
							<div class="clearfix"></div>
						</li>
					</ul>
					<a href="#" class="btn btn-white btn-sm">View Cart</a> &nbsp; <a href="#" class="btn btn-color btn-sm">Checkout</a>
				</div>
			</div>
			<!-- Shopping kart ends -->

			<!-- Langauge starts -->
			<div class="tb-language dropdown pull-right">
				<a href="#" data-target="#" data-toggle="dropdown"><i class="fa fa-globe"></i> English <i class="fa fa-angle-down color"></i></a>
				<!-- Dropdown menu with languages -->
				<ul class="dropdown-menu dropdown-mini" role="menu">
					<li><a href="#">Germany</a></li>
					<li><a href="#">France</a></li>
					<li><a href="#">Brazil</a></li>
				</ul>
			</div>
			<!-- Language ends -->

			<!-- Search section for responsive design -->
			<div class="tb-search pull-left">
				<a href="#" class="b-dropdown"><i class="fa fa-search square-2 rounded-1 bg-color white"></i></a>
				<div class="b-dropdown-block">
					<form>
						<!-- Input Group -->
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Type Something">
									<span class="input-group-btn">
										<button class="btn btn-color" type="button">Search</button>
									</span>
						</div>
					</form>
				</div>
			</div>
			<!-- Search section ends -->

			<!-- Social media starts -->
			<div class="tb-social pull-right">
				<div class="brand-bg text-right">
					<!-- Brand Icons -->
					<a href="#" class="facebook"><i class="fa fa-facebook square-2 rounded-1"></i></a>
					<a href="#" class="twitter"><i class="fa fa-twitter square-2 rounded-1"></i></a>
					<a href="#" class="google-plus"><i class="fa fa-google-plus square-2 rounded-1"></i></a>
				</div>
			</div>
			<!-- Social media ends -->

			<div class="clearfix"></div>
		</div>
	</div>

	<!-- Top bar ends -->

	<!-- Header One Starts -->
	<div class="header-1">

		<!-- Container -->
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-4">
					<!-- Logo section -->
					<div class="logo">
						<h1><a href="index.html"><i class="fa fa-bookmark-o"></i> E-SAKAFO</a></h1>
					</div>
				</div>
				<div class="col-md-6 col-md-offset-2 col-sm-5 col-sm-offset-3 hidden-xs">
					<!-- Search Form -->
					<div class="header-search">
						<form>
							<!-- Input Group -->
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Type Something">
										<span class="input-group-btn">
											<button class="btn btn-color" type="button">Search</button>
										</span>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Navigation starts -->

		<div class="navi">
			<div class="container">
				<div class="navy">
					<ul>
						<!-- Main menu -->
						<li><a href="#">Accueil</a>
							<!-- Submenu -->
							<ul>

								<li><a href="index.html">Home 1</a></li>
								<li><a href="index-2.html"><span>Home 2</span></a></li>
								<li><a href="index-3.html"><span>Home 3</span></a></li>

							</ul>
						</li>

						
		<!-- Navigation ends -->

	</div>

	<!-- Header one ends -->

</header>
<!-- end header -->

<!-- start main content -->
<main class="main-container">

	<!-- new collection directory -->
	<section id="content-block" class="slider_area">
		<div class="container">
			<div class="content-push">
				<div class="row">

					<div class="col-md-3 col-md-push-9">
						<div class="sidebar-navigation">
                                                    <div class="title"><center>CATEGORIE</center><i class="fa fa-angle-down"></i></div>
							<div class="list">
                                                           <a href="ListePlat"><button class="btn categorie">Tous</button></a>
                                                            <% for(int i = 0; i < listeCategorie.length; i++){ %>
                                                            <form action="ListePlatCategorie" method="get">
                                                                <input type="hidden" name="idCategorie" value="<%= listeCategorie[i].getIdCategorie() %>">
								<button class="btn categorie" type="submit"><%= listeCategorie[i].getNomCategorie() %></button>
                                                            </form>
                                                            <% } %>
                                                            
							</div>
						</div>
						<div class="clear"></div>
					</div>

					<div class="col-md-9 col-md-pull-3">

						<div class="header_slider">
							<article class="boss_slider">
								<div class="tp-banner-container">
									<div class="tp-banner tp-banner0">
										<ul>
											<!-- SLIDE  -->
											<li data-link="#" data-target="_self" data-transition="flyin" data-slotamount="7" data-masterspeed="500" data-saveperformance="on">
												<!-- MAIN IMAGE --><img src="img/dummy.png" alt="slidebg1" data-lazyload="img/plat/plat2.jpg" data-bgposition="left center" data-kenburns="off" data-duration="14000" data-ease="Linear.easeNone" data-bgpositionend="right center" />
												<!-- LAYER NR. 1 -->
												<div class="tp-caption very_big_white randomrotate customout rs-parallaxlevel-0" data-x="270" data-y="140" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="300" data-start="500" data-end="4800" data-endspeed="300" data-easing="easeInOutBack" data-endeasing="easeOutBack" data-elementdelay="0.1" data-endelementdelay="0.1" style="z-index: 2;"> SAKAFO </div>
												<!-- LAYER NR. 2 -->
												<div class="tp-caption very_large_white_text randomrotate customout rs-parallaxlevel-0" data-x="270" data-y="250" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="300" data-start="800" data-end="4800" data-endspeed="300" data-easing="easeInOutBack" data-endeasing="easeOutBack" data-elementdelay="0.1" data-endelementdelay="0.1" style="z-index: 2;"> selection </div>
												<!-- LAYER NR. 3 -->
												<div class="tp-caption large_white_text randomrotate customout rs-parallaxlevel-0" data-x="355" data-y="363" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="300" data-start="1200" data-end="4800" data-endspeed="300" data-easing="easeInOutBack" data-endeasing="easeOutBack" data-elementdelay="0.1" data-endelementdelay="0.1" style="z-index: 2;"> SHOP NOW </div>

											</li>
											<li data-link="#" data-target="_self" data-transition="3dcurtain-horizontal" data-slotamount="7" data-masterspeed="500" data-saveperformance="on">
												<!-- MAIN IMAGE --><img src="img/dummy.png" alt="slidebg1" data-lazyload="img/plat/plat1.jpg"  data-bgposition="left center" data-kenburns="off" data-duration="14000" data-ease="Linear.easeNone" data-bgpositionend="right center" />
												<!-- LAYER NR. 1 -->
												<div class="tp-caption very_big_white fade customout rs-parallaxlevel-0" data-x="270" data-y="140" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="300" data-start="500" data-end="4800" data-endspeed="300" data-easing="easeOutBack" data-endeasing="easeOutBack" data-elementdelay="0.1" data-endelementdelay="0.1" style="z-index: 2;"> SAKAFO </div>
												<!-- LAYER NR. 2 -->
												<div class="tp-caption very_large_white_text fade customout rs-parallaxlevel-0" data-x="270" data-y="250" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="300" data-start="800" data-end="4800" data-endspeed="300" data-easing="easeOutBack" data-endeasing="easeOutBack" data-elementdelay="0.1" data-endelementdelay="0.1" style="z-index: 2;"> selection </div>
												<!-- LAYER NR. 3 -->
												<div class="tp-caption large_white_text fade customout rs-parallaxlevel-0" data-x="355" data-y="363" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="300" data-start="1200" data-end="4800" data-endspeed="300" data-easing="easeOutBack" data-endeasing="easeOutBack" data-elementdelay="0.1" data-endelementdelay="0.1" style="z-index: 2;"> SHOP NOW </div>
											</li>
											
										</ul>
										<div class="slideshow_control"></div>
									</div><!-- /.tp-banner -->
								</div>
							</article>
						</div><!-- /.header_slider -->

						<div class="clear"></div>

					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- end new collection directory -->



<section id="popular-product" class="ecommerce">
	<div class="container">
		<!-- Shopping items content -->
		<div class="shopping-content">

			<!-- Block heading two -->
			<div class="block-heading-two">
				<h3><span>LISTES PLATS</span></h3>
			</div>

			<% for(int i = 0; i < listePlat.length; i++){ %>
				<div class="col-md-3 col-sm-6">
					<!-- Shopping items -->
					<div class="shopping-item">
						<!-- Image -->
						<a href="single-product.html"><img src="img/plat/<%= listePlat[i].getNomPlat() %>.jpg" width="200" height="200" alt="" /></a>
						<!-- Shopping item name / Heading -->
						<h4><a href="single-product.html"><%= listePlat[i].getNomPlat() %></a><span class="color pull-right"><%= listePlat[i].getPrix() %> Ar</span></h4>
                                                <h4><p>Prix Revient = <%= listePlat[i].getPrixDeRevient() %></p></h4>
                                                <div class="clearfix"></div>
						<!-- Buy now button -->
						<div class="visible-xs">
							<a class="btn btn-color btn-sm" href="#">Buy Now</a>
						</div>
						<!-- Shopping item hover block & link -->
						<div class="item-hover bg-color hidden-xs">
							<a href="#">Commander</a>
						</div>
					</div>
				</div>
                                <% } %>
			</div>
			<!-- Pagination -->
			<div class="shopping-pagination pull-right">
				<ul class="pagination">
					<li class="disabled"><a href="#">&laquo;</a></li>
					<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
			</div>
			<!-- Pagination end-->
		</div>
	</div>
</section>


	<!-- End Our Clients  -->

</main>
<!-- end main content -->



<!-- start footer area -->
<footer class="footer-area-content">

	<div class="container">
		<div class="footer-wrapper style-3">
			<div class="type-1">
				<div class="footer-columns-entry">
					<div class="row">
						<div class="col-md-3">
							<img alt="" src="img/footer-logo.png" class="footer-logo">
							<div class="footer-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</div>
							<div class="footer-address">30 South Avenue San Francisco<br> Phone: +78 123 456 123<br> Email: <a href="mailto:Support@demo.com">Support@demo.com</a><br>
								<a target="_blank" href="http://iglyphic.com/"><b>www.FOOD.com</b></a>
							</div>
							<div class="clear"></div>
						</div>
						<div class="col-md-2 col-sm-4">
							<h3 class="column-title">Customer Care</h3>
							<ul class="column">
								<li><a href="#">Terms & Condition</a></li>
								<li><a href="#">Contact Us</a></li>
								<li><a href="#">Shipping Charge</a></li>
								<li><a href="#">Shipping Track</a></li>
								<li><a href="#">Payment Method</a></li>
								<li><a href="#">Order History</a></li>
								<li><a href="#">Returns</a></li>
							</ul>
							<div class="clear"></div>
						</div>
						<div class="col-md-2 col-sm-4">
							<h3 class="column-title">Your Account</h3>
							<ul class="column">
								<li><a href="#">My Account</a></li>
								<li><a href="#">Wishlist</a></li>
								<li><a href="#">Affiliate Dashboard</a></li>
								<li><a href="#">Billing Address</a></li>
								<li><a href="#">Cancel Order</a></li>
								<li><a href="#">Order History</a></li>
								<li><a href="#">Returns</a></li>
							</ul>
							<div class="clear"></div>
						</div>
						<div class="col-md-2 col-sm-4">
							<h3 class="column-title">Shop Information</h3>
							<ul class="column">
								<li><a href="#">About Company</a></li>
								<li><a href="#">Become Member</a></li>
								<li><a href="#">License Details</a></li>
								<li><a href="#">Custom Service</a></li>
								<li><a href="#">Tax Information</a></li>
								<li><a href="#">Order History</a></li>
								<li><a href="#">Job & Vacancies</a></li>
							</ul>
							<div class="clear"></div>
						</div>
						<div class="clearfix visible-sm-block"></div>
						<div class="col-md-3">
							<h3 class="column-title">Company working hours</h3>
							<div class="footer-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</div>
							<div class="footer-description">
								<b>Monday-Friday:</b> 8.30 a.m. - 5.30 p.m.<br>
								<b>Saturday:</b> 9.00 a.m. - 2.00 p.m.<br>
								<b>Sunday:</b> Closed
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


	<div class="footer-bottom footer-wrapper style-3">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="footer-bottom-navigation">
						<div class="cell-view">
							<div class="footer-links">
								<a href="#">Site Map</a>
								<a href="#">Search</a>
								<a href="#">Terms</a>
								<a href="#">Advanced Search</a>
								<a href="#">Orders and Returns</a>
								<a href="#">Contact Us</a>
							</div>
							<div class="copyright">Created with by <a target="_blank" href="http://iglyphic.com/">iGlyphic</a> . All right reserved</div>
						</div>
						<div class="cell-view">
							<div class="payment-methods">
								<a href="#"><img alt="" src="img/payment-method-1.png"></a>
								<a href="#"><img alt="" src="img/payment-method-2.png"></a>
								<a href="#"><img alt="" src="img/payment-method-3.png"></a>
								<a href="#"><img alt="" src="img/payment-method-4.png"></a>
								<a href="#"><img alt="" src="img/payment-method-5.png"></a>
								<a href="#"><img alt="" src="img/payment-method-6.png"></a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>



</footer>
<!-- footer area end -->


<!-- All script -->
<script src="js/vendor/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/smoothscroll.js"></script>
<!-- Scroll up js
============================================ -->
<script src="js/jquery.scrollUp.js"></script>
<script src="js/menu.js"></script>
<!-- new collection section script -->
<script src="js/swiper/idangerous.swiper.min.js"></script>
<script src="js/swiper/swiper.custom.js"></script>

<!-- Magnific Popup -->
<script src="js/jquery.magnific-popup.min.js"></script>

<script src="js/jquery.countdown.min.js"></script>

<!-- SLIDER REVOLUTION SCRIPTS  -->
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<!-- Owl carousel -->
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>



<script type="text/javascript">

	/*-----------------------------------------------------------------------------------*/
	/* Product Carousel
	 /*-----------------------------------------------------------------------------------*/
	if (jQuery().owlCarousel) {
		var productCarousel = $("#product-carousel");
		productCarousel.owlCarousel({
			loop: true,
			dots: false,
			responsive: {
				0: {
					items: 1
				},
				480: {
					items: 2
				},
				900: {
					items: 3
				},
				1100: {
					items: 4
				}
			}
		});

		// Custom Navigation Events
		$(".product-control-nav .next").on("click", function() {
			productCarousel.trigger('next.owl.carousel');
		});

		$(".product-control-nav .prev").on("click", function() {
			productCarousel.trigger('prev.owl.carousel');
		});
	}

	/* Main Slider */
	$('.tp-banner0').show().revolution({
		dottedOverlay: "none",
		delay: 5000,
		startWithSlide: 0,
		startwidth: 869,
		startheight: 520,
		hideThumbs: 10,
		hideTimerBar: "on",
		thumbWidth: 50,
		thumbHeight: 50,
		thumbAmount: 4,
		navigationType: "bullet",
		navigationArrows: "solo",
		navigationStyle: "round",
		touchenabled: "on",
		onHoverStop: "on",
		swipe_velocity: 0.7,
		swipe_min_touches: 1,
		swipe_max_touches: 1,
		drag_block_vertical: false,
		parallax: "mouse",
		parallaxBgFreeze: "on",
		parallaxLevels: [7, 4, 3, 2, 5, 4, 3, 2, 1, 0],
		keyboardNavigation: "off",
		navigationHAlign: "right",
		navigationVAlign: "bottom",
		navigationHOffset: 30,
		navigationVOffset: 30,
		soloArrowLeftHalign: "left",
		soloArrowLeftValign: "center",
		soloArrowLeftHOffset: 50,
		soloArrowLeftVOffset: 8,
		soloArrowRightHalign: "right",
		soloArrowRightValign: "center",
		soloArrowRightHOffset: 50,
		soloArrowRightVOffset: 8,
		shadow: 0,
		fullWidth: "on",
		fullScreen: "off",
		spinner: "spinner4",
		stopLoop: "on",
		stopAfterLoops: -1,
		stopAtSlide: -1,
		shuffle: "off",
		autoHeight: "off",
		forceFullWidth: "off",
		hideThumbsOnMobile: "off",
		hideNavDelayOnMobile: 1500,
		hideBulletsOnMobile: "off",
		hideArrowsOnMobile: "off",
		hideThumbsUnderResolution: 0,
		hideSliderAtLimit: 0,
		hideCaptionAtLimit: 500,
		hideAllCaptionAtLilmit: 500,
		videoJsPath: "rs-plugin/videojs/",
		fullScreenOffsetContainer: ""
	});



</script>


</body>


</html>