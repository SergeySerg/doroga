var pageHash = window.location.hash.substr(1);
if(pageHash.indexOf("service") + 1){
	window.location.hash = '';
}

jQuery(document).ready(function($){

	if ($('#' + pageHash).length != 0) {
		$('html, body').animate({scrollTop: $('#' + pageHash).offset().top}, 500);
	}

	/* ------------------ Back To Top ------------------- */

	jQuery('#footer-menu-back-to-top a').click(function(){
		jQuery('html, body').animate({scrollTop:0}, 300); 
		return false; 
	});
	
	/* ------------------ Progress Bar ------------------- */	
	$(function() {
		$(".meter > span").each(function() {
			$(this)
			.data("origWidth", $(this).width())
			.width(0)
			.animate({
				width: $(this).data("origWidth")
			}, 1200);
		});
	});

	/* --------------------- Tabs ------------------------ */	

		(function() {

			var $tabsNav    = $('.tabs-nav'),
				$tabsNavLis = $tabsNav.children('li'),
				$tabContent = $('.tab-content');

			$tabsNav.each(function() {
				var $this = $(this);

				$this.next().children('.tab-content').stop(true,true).hide()
													 .first().show();

				$this.children('li').first().addClass('active').stop(true,true).show();
			});

			$tabsNavLis.on('click', function(e) {
				var $this = $(this);

				$this.siblings().removeClass('active').end()
					 .addClass('active');

				$this.parent().next().children('.tab-content').stop(true,true).hide()
															  .siblings( $this.find('a').attr('href') ).fadeIn();

				e.preventDefault();
			});

		})();

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
			tiles_type: "justified",
		});
	});

	$("#webstudio-slider").unitegallery({
		gallery_theme: "slider",
		tiles_justified_space_between:0,
		gallery_width:'100%',							//gallery width
		gallery_height:450,								//gallery height
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

	$('.date-picker').datepicker().next().on('click', function(){
		$(this).prev().focus();
		
	});
	/* Start script for booking */
	$('.book').click(function(){
		$('#bookingform input[name="submit"]').prop('disabled', false);
		var id_room = $(this).attr('data-room-id');
		$('#select_room').children("option[data-room-id='" + id_room + "']").prop('selected','true');
	});

	/* End script for booking */


});
document.addEventListener("DOMContentLoaded", function(){
/*Start script for comments*/
$('#comment-send').on('click', function(event){
	var data = $('form#commenting-form').serialize();
	$.ajax({
		url: '',
		method: "POST",
		data: data,
		dataType : "json",
		success: function(data){
			console.info('Server response: ', data);
			if(data.status == 'success'){
				swal ("Ваше повідомлення успішно відправлено!");
				jQuery("#commenting-form").trigger("reset");
				window.location.href = '/';

			}else{
				swal("Будь ласка введіть всі дані!");
				$("#comment-send").attr('disabled', false);
			}

		},
		error:function(data){
			swal ("Сталася помилка при відправці повідомлення!");
			jQuery("#commenting-form").trigger("reset");
		}
	},"json");
	event.preventDefault();

});
/*End script for comments*/
});
