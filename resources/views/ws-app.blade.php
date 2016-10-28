<!DOCTYPE html>
<html lang="{{ App::getLocale() }}" xmlns="http://www.w3.org/1999/html">
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
	<link href="{{ asset('/css/frontend/bootstrap-responsive.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/main.css') }}?ver={{ $version }}" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Neucha" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Economica:700,400italic">

	<link href="{{ asset('/libs/unitegallery/dist/css/unite-gallery.css') }}" rel="stylesheet">

	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link href="{{ asset('/css/plugins/sweetalert.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/backend/font-awesome.min.css') }}" rel="stylesheet">


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
								<li @if(Request::is('/{{ App::getLocale() }}')) class="active"@endif><a href="/{{ App::getLocale() }}">{{ trans('base.hotel') }}</a></li>
								<li @if(Request::is('*/rooms'))class="active"@endif><a href="/{{ App::getLocale() }}/rooms">{{ trans('base.rooms') }}</a></li>
								<li @if(Request::is('*/services'))class="active"@endif><a href="/{{ App::getLocale() }}/services">{{ trans('base.services') }}</a></li>
								<li @if(Request::is('*/gallery'))class="active"@endif><a href="/{{ App::getLocale() }}/gallery">{{ trans('base.gallery') }}</a></li>
								<li @if(Request::is('*/contact'))class="active"@endif><a href="/{{ App::getLocale() }}/contact">{{ trans('base.contacts') }}</a></li>

							</ul>
							<span class="lang">
								@foreach($langs as $lang)
									<a href="{{str_replace(url(App::getLocale()), url($lang->lang), Request::url())}}">{{$lang -> lang}}</a>
								@endforeach
							</span>
						</div>
					</div>
				</div>
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

			<h2><i class="ico-stats ico-white" style="display: none"></i>Дорога додому</h2>

		</div>
		<!-- end: Container  -->

	</div>

</div>
<!-- end: Page Title -->

<!--start: Wrapper-->
<div id="wrapper" >

	<!--start: Container -->
	@yield('content')
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

						<li><a href="/{{ App::getLocale() }}">{{ trans('base.hotel') }}</a></li>
						<li><a href="/{{ App::getLocale() }}/rooms">{{ trans('base.rooms') }}</a></li>
						<li><a href="/{{ App::getLocale() }}/services">{{ trans('base.services') }}</a></li>
						<li><a href="/{{ App::getLocale() }}/gallery">{{ trans('base.gallery') }}</a></li>
						<li><a href="/{{ App::getLocale() }}/contact">{{ trans('base.contacts') }}</a></li>

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

<!-- start: Container -->
<div class="container">

	<!-- start: Row -->
	<div class="row">

		<!-- start: Contact Info -->
		<div class="span4">
			<div class="title"><h3>{{ trans('base.addr') }}</h3></div>
			<p>
				{!! $texts->get('header.address') !!}
			</p>
		</div>
		<!-- end: Contact Info -->
		<!-- start: Contact Info -->
		<div class="span4">
			<div class="title"><h3>{{ trans('base.tel') }}</h3></div>
			<p>
				{{ $texts->get('header.tel_stat') }}<br>
				{{ $texts->get('header.tel1') }}<br>
				{{ $texts->get('header.tel2') }}<br>

			</p>
		</div>
		<!-- end: Contact Info -->

		<!-- start: Social Sites -->
		<div class="span4">

			<!-- start: Follow Us -->
			<div class="title"><h3>{{ trans('base.soc') }}</h3></div>
			<ul class="soc">
				<li><a class="soc-facebook" href="#"></a></li>
				<li><a class="soc-odnoklassniki" href="#"></a></li>
				<li><a class="soc-vkontakte soc-icon-last" href="#"></a></li>
			</ul>
			<!-- end: Follow Us -->

		</div>
		<!-- end: Social Sites -->

	</div>
	<!-- end: Row -->

</div>
<!-- end: Container -->

<!-- start: Java Script -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js" type="text/javascript" ></script>
<!--<script src="{{ asset('/js/frontend/jquery-1.8.2.js') }}"></script>-->
<script src="{{ asset('/js/frontend/bootstrap.js') }}"></script>
<script src="{{ asset('/js/common.js') }}?ver={{ $version }}"></script>

<!-- Include Required Prerequisites -->
<script src="{{ asset('/js/backend/bootstrap-datepicker.min.js') }}"type="text/javascript"></script>
<link href="{{ asset('/css/backend/datepicker.css') }}" rel="stylesheet">
<!-- end: Java Script -->

<!-- start: For slider -->

<script src="{{ asset('/libs/unitegallery/dist/js/unitegallery.min.js') }}"></script>
<script src="{{ asset('/libs/unitegallery/dist/themes/slider/ug-theme-slider.js') }}"></script>
<script src="{{ asset('/js/frontend/ug-theme-compact.js') }}"></script>
<script src="{{ asset('/js/frontend/ug-theme-carousel.js') }}"></script>
<script src="{{ asset('/js/frontend/ug-theme-tiles.js') }}"></script>
<script src="http://maps.google.com/maps/api/js?sensor=true&key=AIzaSyARimfCVH19VyYWgXVxeIBJ9LUGdels4E4"></script>

<script src="{{ asset('/js/frontend/jquery.gmap.min.js') }}"></script>
<script src="{{ asset('/js/plugins/sweetalert.min.js') }}"></script>


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
<script type="text/javascript">
	$(function() {

		$('.date-picker').datepicker().next().on('click', function(){
			$(this).prev().focus();
		});

	});
	/* raund script-----------------------------------------------------------*/

	$('.webstudio-carousel').each(function(){
		$(this).unitegallery({
			gallery_theme: "carousel",
			tile_width: 75,						//tile width
			tile_height: 75,						//tile height
			tile_enable_border:true,			//enable border of the tile
			tile_border_width:3,				//tile border width
			tile_border_color:"#f6f6f6",		//tile border color
			tile_border_radius:0,
			tile_enable_outline: false,
			theme_enable_navigation: false,
		});
	});

	$('.webstudio-gallery').each(function(){
		$(this).unitegallery({
			gallery_theme: "tiles",
			tiles_type: "justified"
		});
	});

	$("#webstudio-slider").unitegallery({
		gallery_theme: "slider",
		tiles_justified_space_between:0,
		gallery_width:'100%',							//gallery width
		gallery_height:300,								//gallery height
		gallery_max_height: 300,
		slider_control_zoom: false,
		slider_enable_text_panel: true,			 		//true,false - enable the text panel
		slider_textpanel_always_on: true,				//true,false - text panel are always on, false - show only on mouseover
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
		slider_textpanel_bg_opacity: 0.4,
		slider_enable_bullets: false,
	});
	/* END raund script-------------------------------------------------------*/

</script>
<script type="text/javascript">
	$('#googlemaps').gMap({
		maptype: 'ROADMAP',
		scrollwheel: true,
		zoom: 16,
		markers: [
			{
				address: "48.40504  24.59992",
				html: '',
				popup: false,
			}

		],

	});
</script>
<script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function(){
		$("#bookingform").submit(function(e){
			e.preventDefault();
            $("#submit").attr('disabled', true);
			var name = $("input[name=name]").val();
			var email = $("input[name=email]").val();
			var message = $("input[name=comment]").val();
			var tel = $("input[name=tel]").val();
			var token = $("#token").text();
			var data_from = $("#from").val();
			var data_to = $("#to").val();
			var room = $("#select_room  :selected").val();
			var quantityadult = $("#select_adults  :selected").val();
			var quantityсhildren = $("#select_сhildren  :selected").val();
			//var dataString = 'name='+name+'&email='+email+'&message'+message+'&_token='+token;

			var data = {
				name: name,
				email: email,
				message: message,
				tel: tel,
				'_token': token,
				room: room,
				data_from: data_from,
				data_to: data_to,
				quantityadult: quantityadult,
				quantityсhildren: quantityсhildren

			}
			$.ajax({
				method: "post",
				url : "/contact",
				data : data,
				dataType : "json",

				success: function(data){
					console.info('Server response: ', data);
					if(data.status == 'success'){
						$('.close').trigger('click');
						swal("Ваше повідомлення успішно відправлено!"," ","success");

					}else{
						swal("Будь ласка введіть всі дані!");
						$("#submit").attr('disabled', false);
					}
				},
				error:function(data){

					swal("Сталася помилка при відправці повідомлення!");
					$("#submit").attr('disabled', false);
				}
			},"json");

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