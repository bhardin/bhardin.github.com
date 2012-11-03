<script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>

<script type="text/javascript">
	$(function(){
		$(window).scroll(function(){

		var height_of_header = 159;
			
		if($(window).scrollTop() > height_of_header) $('.side_bar').addClass('fixed');
			else $('.side_bar').removeClass('fixed');
		
		if($(window).scrollTop() > height_of_header) $('.share_buttons').addClass('sb-fixed');
			else $('.share_buttons').removeClass('sb-fixed');
		});
	});
</script>