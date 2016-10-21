<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">
<head>
	<meta charset="utf-8">
	<title>Premium Club</title>
	<meta name="title" content="{{ $meta ->getTranslate('meta_title') }}">
	<meta name="description" content="{{ $meta ->getTranslate('meta_description') }}">
	<meta name="keywords" content="{{ $meta ->getTranslate('meta_keywords') }}">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta property="og:image" content="path/to/image.jpg">

	<link rel="shortcut icon" href="{{ asset('/img/favicon/favicon.ico') }}" type="image/x-icon">
	<link rel="apple-touch-icon" href="{{ asset('/img/favicon/apple-touch-icon.png') }}">
	<link rel="apple-touch-icon" sizes="72x72" href="{{ asset('img/favicon/apple-touch-icon-72x72.png') }}">
	<link rel="apple-touch-icon" sizes="114x114" href="{{ asset('/img/favicon/apple-touch-icon-114x114.png') }}">
	<!-- start: CSS -->
	<link href="{{ asset('/css/frontend/bootstrap.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/frontend/bootstrap-responsive.min.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/main.css') }}?ver={{ $version }}" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Neucha" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Economica:700,400italic">

	<link href="{{ asset('/libs/unitegallery/dist/css/unite-gallery.css') }}" rel="stylesheet">

	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link href="{{ asset('/css/plugins/sweetalert.css') }}" rel="stylesheet">
	<!-- end: CSS -->


</head>

<body>
<header>

	<!--start: Container -->
	<div class="container">

		<!--start: Row -->
		<div class="row">

			<!--start: Logo -->
			<div class="logo span3">

				<a class="brand" href="#"><img src="{{ asset('/img/frontend/logo.png') }}" style="height: 50px;" alt="Logo"></a>

			</div>
			<!--end: Logo -->

			<!--start: Navigation -->
			<div class="span9">

				<div class="navbar navbar-inverse">
					<div class="navbar-inner">
						<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</a>
						<div class="nav-collapse collapse">
							<ul class="nav">
								<li class="active"><a href="index.html">Головна</a></li>
								<li><a href="about.html">Номери</a></li>
								<li><a href="services.html">Послуги</a></li>
								<li><a href="pricing.html">Фотогалерея</a></li>
								<li><a href="contact.html">Контакти</a></li>
							</ul>
						</div>
					</div>
				</div>

					@foreach($langs as $lang)
					<a href="{{str_replace(url(App::getLocale()), url($lang->lang), Request::url())}}">{{$lang -> lang}}</a>
					@endforeach

			</div>
			<!--end: Navigation -->

		</div>
		<!--end: Row -->

	</div>
	<!--end: Container-->

</header>
<!--end: Header-->



<!-- start: Page Title -->
<div id="page-title">

	<div id="page-title-inner">

		<!-- start: Container -->
		<div class="container">

			<h2><i class="ico-stats ico-white"></i>Дорога додому</h2>

		</div>
		<!-- end: Container  -->

	</div>

</div>
<!-- end: Page Title -->

<!--start: Wrapper-->
<div >

	<!--start: Container -->
	<div class="container">

		<div class="row">
			<!-- start: Slider -->
			<div id="gallery" style="
				display:none;
				margin-top: -86px;
				border-radius: 8px;
				border: 5px solid #f6f6f6;
				z-index:9999;
				margin-bottom: 20px">

				<img alt="Будь-який заголовок"
					 src="http://www.karpaty.info/data/objects/img/606/out16.jpg"
					 data-image="http://www.karpaty.info/data/objects/img/606/out16.jpg"
					 data-description="Будь-який опис під ним. Це все можна міняти з адмін панелі">

				<img alt="Будь-який заголовок"
					 src="http://www.karpaty.info/data/objects/img/606/out10.jpg"
					 data-image="http://www.karpaty.info/data/objects/img/606/out10.jpg"
					 data-description="Будь-який опис під ним. Це все можна міняти з адмін панелі">

				<img alt="Будь-який заголовок"
					 src="http://www.karpaty.info/data/objects/img/606/out9.jpg"
					 data-image="http://www.karpaty.info/data/objects/img/606/out9.jpg"
					 data-description="Будь-який опис під ним. Це все можна міняти з адмін панелі">

				<img alt="Будь-який заголовок"
					 src="http://www.karpaty.info/data/objects/img/606/out8.jpg"
					 data-image="http://www.karpaty.info/data/objects/img/606/out8.jpg"
					 data-description="Будь-який опис під ним. Це все можна міняти з адмін панелі">


				<img alt="Будь-який заголовок"
					 src="http://www.karpaty.info/data/objects/img/606/out7.jpg"
					 data-image="http://www.karpaty.info/data/objects/img/606/out7.jpg"
					 data-description="Будь-який опис під ним. Це все можна міняти з адмін панелі">

			</div>
			<!-- end: Slider -->
		</div>

		<!--start: Row -->
		<div class="row">

			<div class="span12">

				<!-- start: About Us -->
				<div id="about">
					<div class="title"><h3>Про нас</h3></div>
					<p>Приватна садиба "Дорога додому". На першому поверсі камінний зал і кухня,оснащена всім необхідним для приготування їжі.Окремо- в буд господарів знається 2 поверх(2 кімнати зі зручностями в номерах та балконами івеликим холом з меблями з лози. На території садиби є сауна з контрастним басейном,каміном. Для дітей-батут,дерев'яні будиночки,пісочниця,гірка,качелі. Територія дуже зелена,багато фруктових і хвойних дерев,квітів,декоративних насаджень. В котеджі дуже багато старовинних автентичних речей.Ще. на подвір'ї є альтанка і мангал.До послуг, що надасть є ще приготування смачної домашн.їжі,паркова,екскурсії.Відстань до центральної дороги-600 метрів,до річки200.Тихе і затишне місце</p>
				</div>
				<!-- end: About Us -->


			</div>

		</div>
		<!--end: Row-->

		<!--start: Row -->
		<div class="row">

			<div class="span12">

				<div class="title"><h3>Послуги</h3></div>

			</div>

		</div>
		<!--end: Row-->

		<!-- start: Row -->
		<div class="row">

			<!-- start: Icon Boxes -->
			<div class="icons-box-vert-container">


				<!-- start: Icon Box Start -->
				<div class="span6">
					<div class="icons-box-vert">
						<a href="#">
							<img alt="" class="circle-color" style="width: 90px; height: 90px" src="http://www.karpaty.info/data/objects/img/606/out20.jpg" data-holder-rendered="true" >
						</a>
						<div class="icons-box-vert-info">
							<h3>Дитячий майданчик</h3>
							<p>Для дітей облаштовано батут, дерев'яні будиночки, пісочниця, гірка, качелі.</p>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<!-- end: Icon Box-->

				<!-- start: Icon Box Start -->
				<div class="span6">
					<div class="icons-box-vert">
						<a href="#">
							<img alt="" class="circle-color" style="width: 90px; height: 90px" src="http://www.karpaty.info/data/objects/img/606/out20.jpg" data-holder-rendered="true" >
						</a>
						<div class="icons-box-vert-info">
							<h3>Сауна</h3>
							<p>На території садиби є сауна з контрастним басейном та каміном.</p>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<!-- end: Icon Box -->

				<!-- start: Icon Box Start -->
				<div class="span6">
					<div class="icons-box-vert">
						<a href="#">
							<img alt="" class="circle-color" style="width: 90px; height: 90px" src="http://www.karpaty.info/data/objects/img/606/out17.jpg" data-holder-rendered="true" >
						</a>
						<div class="icons-box-vert-info">
							<h3>Альтанка</h3>
							<p>Ще для відпочинку наших гостей доступні альтанка і мангал що розміщені на подвір'ї.</p>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<!-- end: Icon Box -->

				<!-- start: Icon Box Start -->
				<div class="span6">
					<div class="icons-box-vert">
						<a href="#">
							<img alt="" class="circle-color" style="width: 90px; height: 90px" src="http://static2.karpaty.info/data/objects/img/606/out18_tn.jpg" data-holder-rendered="true" >
						</a>
						<div class="icons-box-vert-info">
							<h3>Паркінг</h3>
							<p>До послуг наших клієнтів доступне безкоштовне паркомісце на території садиби.</p>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<!-- end: Icon Box -->

			</div>
			<!-- end: Icon Boxes -->
			<div class="clear"></div>
		</div>
		<!-- end: Row -->


	</div>
	<!--end: Container-->


</div>
<!-- end: Wrapper  -->






<!-- start: Footer Menu -->
<div id="footer-menu" class="hidden-tablet hidden-phone">

	<!-- start: Container -->
	<div class="container">

		<!-- start: Row -->
		<div class="row">

			<!-- start: Footer Menu Logo -->
			<div class="span2">
				<div id="footer-menu-logo">
					<a href="#"><img src="{{ asset('/img/frontend/logo.png') }}" alt="logo" /></a>
				</div>
			</div>
			<!-- end: Footer Menu Logo -->

			<div class="span1">

			</div>

			<!-- start: Footer Menu Links-->
			<div class="span8">

				<div id="footer-menu-links">

					<ul id="footer-nav">

						<li><a href="index.html">Головна</a></li>

						<li><a href="about.html">Номери</a></li>

						<li><a href="services.html">Послуги</a></li>

						<li><a href="pricing.html">Фотогалерея</a></li>

						<li><a href="contact.html">Контакти</a></li>

					</ul>

				</div>

			</div>
			<!-- end: Footer Menu Links-->

			<!-- start: Footer Menu Back To Top -->
			<div class="span1">

				<div id="footer-menu-back-to-top">
					<a href="#"></a>
				</div>

			</div>
			<!-- end: Footer Menu Back To Top -->

		</div>
		<!-- end: Row -->

	</div>
	<!-- end: Container  -->

</div>

<!-- start: Java Script -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="{{ asset('/js/frontend/jquery-1.8.2.js') }}"></script>
<script src="{{ asset('/js/frontend/bootstrap.js') }}"></script>
<script src="{{ asset('/js/common.js') }}?ver={{ $version }}"></script>
<!-- end: Java Script -->

<!-- start: For slider -->
<script src="{{ asset('/libs/unitegallery/dist/js/unitegallery.min.js') }}"></script>
<script src="{{ asset('/libs/unitegallery/dist/themes/slider/ug-theme-slider.js') }}"></script>
<!--<script type='text/javascript' src='unitegallery/themes/tiles/ug-theme-tiles.js'></script>-->
<!-- end: For slider -->
<script type="text/javascript">

	jQuery(document).ready(function(){

		jQuery("#gallery").unitegallery({
			tiles_justified_space_between:0,
			gallery_width:'100%',							//gallery width
			gallery_height:300,							//gallery height
			gallery_max_height: 300,
			slider_control_zoom: false,

			slider_enable_text_panel: true,			 //true,false - enable the text panel
			slider_textpanel_always_on: true,			 //true,false - text panel are always on, false - show only on mouseover

			slider_textpanel_text_valign: "middle",			//middle, top, bottom - text vertical align
			slider_textpanel_padding_top:10,				//textpanel padding top
			slider_textpanel_padding_bottom:20,				//textpanel padding bottom
			slider_textpanel_height: null,					//textpanel height. if null it will be set dynamically
			slider_textpanel_padding_title_description: 5,	//the space between the title and the description
			slider_textpanel_padding_right: 11,				//cut some space for text from right
			slider_textpanel_padding_left: 11,				//cut some space for text from left
			slider_textpanel_fade_duration: 200,			//the fade duration of textpanel appear
			slider_textpanel_enable_title: true,			//enable the title text
			slider_textpanel_enable_description: true,		//enable the description text
			slider_textpanel_enable_bg: true,				//enable the textpanel background
			slider_textpanel_bg_color:"#000000",			//textpanel background color
			slider_textpanel_bg_opacity: 0.4,				//textpanel background opacity

		});

	});

</script>



<!--<script src="{{ asset('/libs/jquery/dist/jquery.min.js') }}"></script>
<script src="{{ asset('/js/common.js') }}?ver={{ $version }}"></script>

<script src="{{ asset('/libs/unitegallery/dist/themes/default/ug-theme-default.js') }}"></script>
<script src="{{ asset('/libs/unitegallery/dist/themes/slider/ug-theme-slider.js') }}"></script>
<script src="{{ asset('/libs/unitegallery/dist/themes/tiles/ug-theme-tiles.js') }}"></script>
<script src="{{ asset('/libs/unitegallery/dist/themes/tilesgrid/ug-theme-tilesgrid.js') }}"></script>
<script src="{{ asset('/libs/unitegallery/dist/themes/compact/ug-theme-compact.js') }}"></script>
<script src="{{ asset('/libs/unitegallery/dist/js/unitegallery.min.js') }}"></script>
<script src="{{ asset('/js/plugins/sweetalert.min.js') }}"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>-->
</body>
</html>