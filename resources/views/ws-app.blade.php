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
	<link href="{{ asset('/css/frontend/ace.min.css') }}" rel="stylesheet">
	<link href="{{ asset('/css/frontend/chosen.css') }}" rel="stylesheet">
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
								<li><a href="/{{ App::getLocale() }}">{{ trans('base.hotel') }}</a></li>
								<li><a href="/{{ App::getLocale() }}/rooms">{{ trans('base.rooms') }}</a></li>
								<li><a href="/{{ App::getLocale() }}/services">{{ trans('base.services') }}</a></li>
								<li><a href="/{{ App::getLocale() }}/gallery">{{ trans('base.gallery') }}</a></li>
								<li><a href="/{{ App::getLocale() }}/contact">{{ trans('base.contacts') }}</a></li>

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
<div >

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

<!--ace styles-->
<link href="{{ asset('/css/backend/ace.min.css') }}" rel="stylesheet">
<script src="{{ asset('/js/backend/ace-elements.min.js') }}"></script>
<script src="{{ asset('/js/backend/ace.min.js') }}"></script>

<script src="{{ asset('/js/backend/chosen.jquery.min.js') }}"type="text/javascript"></script>


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
		$('#id-disable-check').on('click', function() {
			var inp = $('#form-input-readonly').get(0);
			if(inp.hasAttribute('disabled')) {
				inp.setAttribute('readonly' , 'true');
				inp.removeAttribute('disabled');
				inp.value="This text field is readonly!";
			}
			else {
				inp.setAttribute('disabled' , 'disabled');
				inp.removeAttribute('readonly');
				inp.value="This text field is disabled!";
			}
		});


		$(".chzn-select").chosen();

		$('[data-rel=tooltip]').tooltip({container:'body'});
		$('[data-rel=popover]').popover({container:'body'});

		$('textarea[class*=autosize]').autosize({append: "\n"});
		$('textarea[class*=limited]').each(function() {
			var limit = parseInt($(this).attr('data-maxlength')) || 100;
			$(this).inputlimiter({
				"limit": limit,
				remText: '%n character%s remaining...',
				limitText: 'max allowed : %n.'
			});
		});

		$.mask.definitions['~']='[+-]';
		$('.input-mask-date').mask('99/99/9999');
		$('.input-mask-phone').mask('(999) 999-9999');
		$('.input-mask-eyescript').mask('~9.99 ~9.99 999');
		$(".input-mask-product").mask("a*-999-a999",{placeholder:" ",completed:function(){alert("You typed the following: "+this.val());}});



		$( "#input-size-slider" ).css('width','200px').slider({
			value:1,
			range: "min",
			min: 1,
			max: 6,
			step: 1,
			slide: function( event, ui ) {
				var sizing = ['', 'input-mini', 'input-small', 'input-medium', 'input-large', 'input-xlarge', 'input-xxlarge'];
				var val = parseInt(ui.value);
				$('#form-field-4').attr('class', sizing[val]).val('.'+sizing[val]);
			}
		});

		$( "#input-span-slider" ).slider({
			value:1,
			range: "min",
			min: 1,
			max: 11,
			step: 1,
			slide: function( event, ui ) {
				var val = parseInt(ui.value);
				$('#form-field-5').attr('class', 'span'+val).val('.span'+val).next().attr('class', 'span'+(12-val)).val('.span'+(12-val));
			}
		});


		$( "#slider-range" ).css('height','200px').slider({
			orientation: "vertical",
			range: true,
			min: 0,
			max: 100,
			values: [ 17, 67 ],
			slide: function( event, ui ) {
				var val = ui.values[$(ui.handle).index()-1]+"";

				if(! ui.handle.firstChild ) {
					$(ui.handle).append("<div class='tooltip right in' style='display:none;left:15px;top:-8px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>");
				}
				$(ui.handle.firstChild).show().children().eq(1).text(val);
			}
		}).find('a').on('blur', function(){
			$(this.firstChild).hide();
		});

		$( "#slider-range-max" ).slider({
			range: "max",
			min: 1,
			max: 10,
			value: 2
		});

		$( "#eq > span" ).css({width:'90%', 'float':'left', margin:'15px'}).each(function() {
			// read initial values from markup and remove that
			var value = parseInt( $( this ).text(), 10 );
			$( this ).empty().slider({
				value: value,
				range: "min",
				animate: true

			});
		});


		$('#id-input-file-1 , #id-input-file-2').ace_file_input({
			no_file:'No File ...',
			btn_choose:'Choose',
			btn_change:'Change',
			droppable:false,
			onchange:null,
			thumbnail:false //| true | large
			//whitelist:'gif|png|jpg|jpeg'
			//blacklist:'exe|php'
			//onchange:''
			//
		});

		$('#id-input-file-3').ace_file_input({
			style:'well',
			btn_choose:'Drop files here or click to choose',
			btn_change:null,
			no_icon:'icon-cloud-upload',
			droppable:true,
			thumbnail:'small'
			//,icon_remove:null//set null, to hide remove/reset button
			/**,before_change:function(files, dropped) {
						//Check an example below
						//or examples/file-upload.html
						return true;
					}*/
			/**,before_remove : function() {
						return true;
					}*/
			,
			preview_error : function(filename, error_code) {
				//name of the file that failed
				//error_code values
				//1 = 'FILE_LOAD_FAILED',
				//2 = 'IMAGE_LOAD_FAILED',
				//3 = 'THUMBNAIL_FAILED'
				//alert(error_code);
			}

		}).on('change', function(){
			//console.log($(this).data('ace_input_files'));
			//console.log($(this).data('ace_input_method'));
		});


		//dynamically change allowed formats by changing before_change callback function
		$('#id-file-format').removeAttr('checked').on('change', function() {
			var before_change
			var btn_choose
			var no_icon
			if(this.checked) {
				btn_choose = "Drop images here or click to choose";
				no_icon = "icon-picture";
				before_change = function(files, dropped) {
					var allowed_files = [];
					for(var i = 0 ; i < files.length; i++) {
						var file = files[i];
						if(typeof file === "string") {
							//IE8 and browsers that don't support File Object
							if(! (/\.(jpe?g|png|gif|bmp)$/i).test(file) ) return false;
						}
						else {
							var type = $.trim(file.type);
							if( ( type.length > 0 && ! (/^image\/(jpe?g|png|gif|bmp)$/i).test(type) )
								|| ( type.length == 0 && ! (/\.(jpe?g|png|gif|bmp)$/i).test(file.name) )//for android's default browser which gives an empty string for file.type
							) continue;//not an image so don't keep this file
						}

						allowed_files.push(file);
					}
					if(allowed_files.length == 0) return false;

					return allowed_files;
				}
			}
			else {
				btn_choose = "Drop files here or click to choose";
				no_icon = "icon-cloud-upload";
				before_change = function(files, dropped) {
					return files;
				}
			}
			var file_input = $('#id-input-file-3');
			file_input.ace_file_input('update_settings', {'before_change':before_change, 'btn_choose': btn_choose, 'no_icon':no_icon})
			file_input.ace_file_input('reset_input');
		});




		$('#spinner1').ace_spinner({value:0,min:0,max:200,step:10, btn_up_class:'btn-info' , btn_down_class:'btn-info'})
			.on('change', function(){
				//alert(this.value)
			});
		$('#spinner2').ace_spinner({value:0,min:0,max:10000,step:100, icon_up:'icon-caret-up', icon_down:'icon-caret-down'});
		$('#spinner3').ace_spinner({value:0,min:-100,max:100,step:10, icon_up:'icon-plus', icon_down:'icon-minus', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});



		$('.date-picker').datepicker().next().on(ace.click_event, function(){
			$(this).prev().focus();
		});
		$('#id-date-range-picker-1').daterangepicker().prev().on(ace.click_event, function(){
			$(this).next().focus();
		});

		$('#timepicker1').timepicker({
			minuteStep: 1,
			showSeconds: true,
			showMeridian: false
		})

		$('#colorpicker1').colorpicker();
		$('#simple-colorpicker-1').ace_colorpicker();


		$(".knob").knob();


		//we could just set the data-provide="tag" of the element inside HTML, but IE8 fails!
		var tag_input = $('#form-field-tags');
		if(! ( /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase())) )
			tag_input.tag({placeholder:tag_input.attr('placeholder')});
		else {
			//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
			tag_input.after('<textarea id="'+tag_input.attr('id')+'" name="'+tag_input.attr('name')+'" rows="3">'+tag_input.val()+'</textarea>').remove();
			//$('#form-field-tags').autosize({append: "\n"});
		}


		/////////
		$('#modal-form input[type=file]').ace_file_input({
			style:'well',
			btn_choose:'Drop files here or click to choose',
			btn_change:null,
			no_icon:'icon-cloud-upload',
			droppable:true,
			thumbnail:'large'
		})

		//chosen plugin inside a modal will have a zero width because the select element is originally hidden
		//and its width cannot be determined.
		//so we set the width after modal is show
		$('#modal-form').on('show', function () {
			$(this).find('.chzn-container').each(function(){
				$(this).find('a:first-child').css('width' , '200px');
				$(this).find('.chzn-drop').css('width' , '210px');
				$(this).find('.chzn-search input').css('width' , '200px');
			});
		})
		/**
		 //or you can activate the chosen plugin after modal is shown
		 //this way select element has a width now and chosen works as expected
		 $('#modal-form').on('shown', function () {
					$(this).find('.modal-chosen').chosen();
				})
		 */

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