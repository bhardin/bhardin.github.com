<script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>

<script type="text/javascript">
	$(function(){
		$(window).scroll(function(){
			
		if($(window).scrollTop() > 125) $('.side_bar').addClass('fixed');
			else $('.side_bar').removeClass('fixed');
		});
	});
</script>