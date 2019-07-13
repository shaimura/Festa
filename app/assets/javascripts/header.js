$(document).on('mouseenter', '.pointa', function(){
		$(this).find('.balloon1').addClass('balloon-active');
	}
);
$(document).on('mouseleave', '.pointa', function(){
		$(this).find('.balloon1').removeClass('balloon-active');
	}
);


$(document).on('mouseenter', '.pointa', function(){
		$(this).find('.balloon2').addClass('balloon-active');
	}
);
$(document).on('mouseleave', '.pointa', function(){
		$(this).find('.balloon2').removeClass('balloon-active');
	}
);

/*ヘッダーのホバーアクション*/

/*
$(function(){
	$('.pointa').hover(
		function(){
			$(this).find('.balloon1').addClass('balloon-active');
		},
		function(){
			$(this).find('.balloon1').removeClass('balloon-active');

		}
		);
});


$(function(){
	$('.pointa').hover(
		function(){
			$(this).find('.balloon2').addClass('balloon-active');
		},
		function(){
			$(this).find('.balloon2').removeClass('balloon-active');

		}
		);
});

*/

