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
//= require bootstrap-sprockets
//= require activestorage
//= require turbolinks
//= require_tree .


//カレンダーのホバーアクション

$(document).on('mouseenter', '.pointa', function(){
		$(this).find('.balloon-calender').addClass('balloon-active');
	}
);
$(document).on('mouseleave', '.pointa', function(){
		$(this).find('.balloon-calender').removeClass('balloon-active');
	}
);

/*上に戻るボタン*/
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


$(document).ready(function(){
  /*open*/
  $('.header__icon').on('click',function(){
    $('.sidebar').css(
      'display','block'
    ).animate({
      left:'0'
    },
      300
    );
    $('.sidebar-bg').css(
      'display','block'
    ).animate({
      opacity:'0.5'
    },
      300
    )
  });
  /*close*/
  $('.sidebar__icon').on('click',function(){
    $('.sidebar').animate({
      left:'-200px'
    },
      300
    );
    $('.sidebar-bg').animate({
      opacity:'0'
    },
      300
    );
    setTimeout(function(){
      $('.sidebar').css('display','none');
      $('.sidebar-bg').css('display','none');
    },
      300
    );
  });
});


