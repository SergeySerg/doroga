<!DOCTYPE html>
<html lang="{{ App::getLocale() }}" xmlns="http://www.w3.org/1999/html">
<head>
	<meta charset="utf-8">
	<title>Дорога додому</title>

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
	
	{{-- start: CSS --}}
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
	<link href="{{ asset('/css/font-awesome.min.css') }}" rel="stylesheet">
	{{-- end: CSS --}}

</head>

<body>

<header>

	{{--start: Container --}}
	<div class="container">

{{--
		<div class="row">

			<div class="span12">

				<ul class="lang pull-right">

					@foreach($langs as $lang)

						<li><a href="{{str_replace(url(App::getLocale()), url($lang->lang), Request::url())}}">{{$lang -> lang}}</a></li>

					@endforeach

				</ul>

			</div>

		</div>
--}}

		{{--start: Row --}}
		<div class="row">

			{{--start: Logo --}}
			<div class="logo span3">

				<a class="brand" href="/{{ App::getLocale() }}"><img src="{{ asset('/img/frontend/logo.png') }}" alt="Logo"></a>

			</div>
			{{--end: Logo --}}

			{{--start: Navigation --}}
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

								<li @if(Request::is('ua')) class="active"@endif><a href="/{{ App::getLocale() }}">{{ trans('base.hotel') }}</a></li>
								<li @if(Request::is('*/rooms'))class="active"@endif><a href="/{{ App::getLocale() }}/rooms">{{ trans('base.rooms') }}</a></li>
								<li @if(Request::is('*/services'))class="active"@endif><a href="/{{ App::getLocale() }}/services">{{ trans('base.services') }}</a></li>
								<li @if(Request::is('*/gallery'))class="active"@endif><a href="/{{ App::getLocale() }}/gallery">{{ trans('base.gallery') }}</a></li>
								<li @if(Request::is('*/comments'))class="active"@endif><a href="/{{ App::getLocale() }}/comments">{{ trans('base.comments') }}</a></li>
								<li @if(Request::is('*/contact'))class="active"@endif><a href="/{{ App::getLocale() }}/contact">{{ trans('base.contacts') }}</a></li>

							</ul>

						</div>

					</div>

				</div>

			</div>
			{{--end: Navigation --}}

		</div>
		{{--end: Row --}}

	</div>
	{{--end: Container--}}

</header>
{{--end: Header--}}

{{--start: Wrapper--}}
<div id="wrapper" >

	{{--start: Container --}}
	@yield('content')
	{{--end: Container--}}

</div>
{{-- end: Wrapper  --}}

{{-- start: Footer Menu --}}
<div id="footer-menu" class="hidden-tablet hidden-phone">

	{{-- start: Container --}}
	<div class="container">

		{{-- start: Row --}}
		<div class="row">

			{{-- start: Footer Menu Logo --}}
			<div class="span2">

				<div id="footer-menu-logo">

					<a href="/{{ App::getLocale() }}"><img src="{{ asset('/img/frontend/logo.png') }}" alt="logo" /></a>

				</div>

			</div>
			{{-- end: Footer Menu Logo --}}

			<div class="span1"></div>

			{{-- start: Footer Menu Links--}}
			<div class="span8">

				<div id="footer-menu-links">

					<ul id="footer-nav">

						<li><a href="/{{ App::getLocale() }}">{{ trans('base.hotel') }}</a></li>
						<li><a href="/{{ App::getLocale() }}/rooms">{{ trans('base.rooms') }}</a></li>
						<li><a href="/{{ App::getLocale() }}/services">{{ trans('base.services') }}</a></li>
						<li><a href="/{{ App::getLocale() }}/gallery">{{ trans('base.gallery') }}</a></li>
						<li><a href="/{{ App::getLocale() }}/comments">{{ trans('base.comments') }}</a></li>
						<li><a href="/{{ App::getLocale() }}/contact">{{ trans('base.contacts') }}</a></li>

					</ul>

				</div>

			</div>
			{{-- end: Footer Menu Links--}}

			{{-- start: Footer Menu Back To Top --}}
			<div class="span1">

				<div id="footer-menu-back-to-top">
					<a href="#"></a>
				</div>

			</div>
			{{-- end: Footer Menu Back To Top --}}

		</div>
		{{-- end: Row --}}

	</div>
	{{-- end: Container  --}}

</div>

{{-- start: Container --}}
<div class="container">

	{{-- start: Row --}}
	<div class="row">

		{{-- start: Contact Info --}}
		<div class="span4">

			<div class="title"><h3>{{ trans('base.addr') }}</h3></div>

			<p>{!! $texts->get('header.address') !!}</p>

		</div>
		{{-- end: Contact Info --}}

		{{-- start: Contact Info --}}
		<div class="span4">
			<div class="title"><h3>{{ trans('base.tel') }}</h3></div>
			<p>
				{{ $texts->get('header.tel_stat') }}<br>
				{{ $texts->get('header.tel1') }}<br>
				{{ $texts->get('header.tel2') }}<br>

			</p>
		</div>
		{{-- end: Contact Info --}}

		{{-- start: Social Sites --}}
		<div class="span4">

			{{-- start: Follow Us --}}
			<div class="title"><h3>{{ trans('base.soc') }}</h3></div>

			<ul class="soc">

				<li><a class="soc-facebook" href="https://facebook.com"></a></li>
{{--
				<li><a class="soc-odnoklassniki" href="https://ok.ru/"></a></li>
--}}
				<li><a class="soc-vkontakte soc-icon-last" href="https://vk.com"></a></li>

			</ul>
			{{-- end: Follow Us --}}

		</div>
		{{-- end: Social Sites --}}

	</div>
	{{-- end: Row --}}

</div>
{{-- end: Container --}}

{{-- start: Java Script --}}
{{--
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js" type="text/javascript" ></script>
--}}
<script src="{{ asset('/js/frontend/jquery-2.0.3.min.js') }}"></script>
<script src="{{ asset('/js/frontend/bootstrap.js') }}"></script>
<script src="{{ asset('/js/common.js') }}?ver={{ $version }}"></script>

{{-- Include Required Prerequisites --}}
<script src="{{ asset('/js/backend/bootstrap-datepicker.min.js') }}"type="text/javascript"></script>
<link href="{{ asset('/css/backend/datepicker.css') }}" rel="stylesheet">
{{-- end: Java Script --}}

{{-- start: For slider --}}

<script src="{{ asset('/libs/unitegallery/dist/js/unitegallery.min.js') }}"></script>
<script src="{{ asset('/libs/unitegallery/dist/themes/slider/ug-theme-slider.js') }}"></script>
<script src="{{ asset('/js/frontend/ug-theme-compact.js') }}"></script>
<script src="{{ asset('/js/frontend/ug-theme-carousel.js') }}"></script>
<script src="{{ asset('/js/frontend/ug-theme-tiles.js') }}"></script>

<script src="{{ asset('/js/plugins/sweetalert.min.js') }}"></script>
<script>
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
</body>
</html>