<script type="text/javascript">
 	$(document).ready(function() {
 
  // Facebook
	$( ".badge.facebook" ).children().each(function(index,value) {
		var facebook_button = $(this);
		var url = facebook_button.attr("data");

	  jQuery.getJSON("http://graph.facebook.com/?id="+url, function(data) {
	  if (typeof data.shares != 'undefined')
	  	facebook_button.html("<i class=\"icon-facebook-sign\"></i> " + data.shares);
	  else if(typeof data.shares == 'undefined')
	  	facebook_button.html("<i class=\"icon-facebook-sign\"></i> 0");
	  else
	  	facebook_button.html("<i class=\"icon-facebook-sign\"></i> " + data.likes);
	  });
  });
 
 	// Twitter
	$( ".badge.twitter" ).children().each(function(index,value) {
		var twitter_button = $(this);
		var url = twitter_button.attr("data");

	  jQuery.getJSON("http://urls.api.twitter.com/1/urls/count.json?url="+url+"&callback=?", function(data) {
	  	twitter_button.html("<i class=\"icon-twitter-sign\"></i> " + data.count);
	  });
  });
  
  // LinkedIn
	$( ".badge.linkedin" ).children().each(function(index,value) {
		var linkedin_button = $(this);
		var url = linkedin_button.attr("data");

	  jQuery.getJSON("http://www.linkedin.com/countserv/count/share?url="+url+"&format=jsonp&callback=?", function(data) {
	  	linkedin_button.html("<i class=\"icon-linkedin-sign\"></i> " + data.count);
	  });
  });
  
});
</script>