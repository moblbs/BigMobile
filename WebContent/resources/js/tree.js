$(function(){
    $('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', '展看查看');
    $('.tree li.parent_li > span').on('click', function (e) {
        var children = $(this).parent('li.parent_li').find(' > ul > li');
        if (children.is(":visible")) {
            children.hide('fast');
            $(this).attr('title', '展看查看').find(' > i').addClass('icon-plus-sign').removeClass('icon-minus-sign');
        } else {
            children.show('fast');
            $(this).attr('title', '点击收起').find(' > i').addClass('icon-minus-sign').removeClass('icon-plus-sign');
        }
        e.stopPropagation();
    });
    
    var menuYloc = $("#maintainLocation").offset().top;  
    $(window).scroll(function (){  
        var offsetTop = 0 + $(window).scrollTop() +10+"px";  
        $("#maintainLocation").animate({top : offsetTop },{ duration:15 , queue:false });  
    });  
    
  //置顶按钮显示/隐藏实现
	$(window).scroll(function(){
		var w_height = 10;//浏览器高度
		var scroll_top = $(document).scrollTop();//滚动条到顶部的垂直高度
		if(scroll_top > w_height){
				$("#goto-top").fadeIn(500);
			}else{
				$("#goto-top").fadeOut(500);
		}
	});
});

//置顶时间绑定
$("#goto-top").click(function(e){
	e.preventDefault();
	$(document.documentElement).animate({
		scrollTop: 0
		},400);
	//支持chrome
	$(document.body).animate({
		scrollTop: 0
		},400);
})
