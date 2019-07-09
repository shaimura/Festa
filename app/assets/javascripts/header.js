/*ヘッダーのホバーアクション*/

$(function(){
	$('#pointa1').hover(
		function(){
			$(this).find('.balloon1').addClass('balloon-active');
		},
		function(){
			$(this).find('.balloon1').removeClass('balloon-active');

		}
		);
});


$(function(){
	$('#pointa2').hover(
		function(){
			$(this).find('.balloon2').addClass('balloon-active');
		},
		function(){
			$(this).find('.balloon2').removeClass('balloon-active');

		}
		);
});

