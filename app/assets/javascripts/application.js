// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery-ui/widgets/datepicker
//= require jquery-ui/i18n/datepicker-ja
//= require jquery_ujs
//= require activestorage
//= require bootstrap-sprockets
//= require_tree .



//上に戻るボタン
$(document).ready(function(){
	var pagetop = $('.pagetop');
	$(window).scroll(function(){
		if ($(this).scrollTop() > 100){
			pagetop.fadeIn();
		}else{
			pagetop.fadeOut();
		}
	});
	pagetop.click(function(){
		$('body,html').animate({ scrollTop: 0}, 500);
		return false;
	});
});


$(document).ready(function() {
	 $('.drawer').drawer();
});


//プレビュー表示
$(function(){
	$('form').on('change', 'input[type="file"]',function(e){
		var file = e.target.files[0],
		reader = new FileReader(),
		$preview = $(".preview");
		t = this;

		if(file.type.indexOf("image") < 0){
			return false;
		}
		reader.onload = (function(file){
			return function(e){
				$preview.empty();

				$preview.append($('<img>').attr({
					src: e.target.result,
					width: "200px",
					height: "200px",
					class: "preview",
					title: file.name,
				}));
			};
		})(file);
		reader.readAsDataURL(file);

	});
});

//無限スクロール
$(function(){
		$('.jscroll').jscroll({
		contentSelector: '.scroll-list',
		nextSelector: 'span.next:last a'
	   });
	});

$(function(){
	$(window).on('scroll', function(){
	scrollHeigth = $(document).height();
	scrollPosition = $(window).height() + $(window).scrollTop();
	if ((scrollHeigth - scrollPosition) / scrollHeigth <= 0.05){
		$('.jscroll').jscroll({
			contentSelector: '.scroll-list',
		nextSelector: 'span.next:last a'
		});
	   }
	});
});


$(document).ready(function(){
	var w = $(window).width();
	var x = 425;
	if ( w < x ){
 $('#top-festival-date').slick({
            slidesToShow: 2,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 3000,
      });
	}else{
		 $('#top-festival-date').slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 3000,
      });
	}
});





$(function(){
    $('.contents').each(function(i, elem){
        var contentsPOS = $(elem).offset().top;
        $(window).on('load scroll resize', function(){
            var winHeight = $(window).height();
            var scrollTop = $(window).scrollTop();
            var showClass = 'show';
            var timing = 100; // 100pxコンテンツが見えたら次のif文がtrue
            if (scrollTop >= contentsPOS - winHeight + timing){
              $(elem).addClass(showClass);
            } else {
              $(elem).removeClass(showClass);
            }
        });
    });
});




