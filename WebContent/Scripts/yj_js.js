
/*在线文字向上滚*/
	function AutoScroll(obj){
		$(obj).find("ul:first").animate({
			marginTop:"-25px"
		},500,function(){
			$(this).css({marginTop:"0px"}).find("li:first").appendTo(this);
		});
	}
	$(document).ready(function(){
		setInterval('AutoScroll("#s1")',3000);
	});

/*在线文字向上滚end*/



/*运价页标题-在线文字向上滚*/
	function AutoScroll(obj){
		$(obj).find("ul:first").animate({
			marginTop:"-30px"
		},500,function(){
			$(this).css({marginTop:"0px"}).find("li:first").appendTo(this);
		});
	}
	$(document).ready(function(){
		setInterval('AutoScroll("#s2")',4000);
	});

/*运价页标题-在线文字向上滚end*/








