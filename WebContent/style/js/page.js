$(document).ready(function(){
	var page = $("#page").val();
		 // $("a:first").attr("class", "current");
		  $("a:contains('"+page+"')").attr("class", "current");
	$("a").click(function(){
		  $("a").attr("class", "");
		  $(this).attr("class", "current");
		});
	
}); 