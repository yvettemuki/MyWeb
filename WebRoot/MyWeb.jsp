<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html style="overflow-x: hidden;">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Yvette's web</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link rel="stylesheet" type="text/css" href="testNew.css">
<script type="text/javascript">
    //设置UI图片
    function setUI(){
        var icon = document.getElementById('content_img_onclick');
        icon.style.background = "url(images/ui_word.png) no-repeat";
        //先将所有隐藏，相当于刷新一次
        hideIcon();
        var ui_list = document.getElementById('ui_li1');
        ui_list.style.display = "inline-block";
        var ui_list = document.getElementById('ui_li2');
        ui_list.style.display = "inline-block";
        var ui_list = document.getElementById('ui_li3'); 
        ui_list.style.display = "inline-block";
    }
    function setUI1(){
        var icon = document.getElementById('content_img_onclick');
        icon.style.background = "url(images/icon2.png) no-repeat";
        //对应更改相应文字
        var left_intro_word = document.getElementById('left_intro_word_onclick');
        left_intro_word.style.visibility = "visible";
        var intro_detail_p = document.getElementById('intro_detail_p');
        intro_detail_p.innerHTML = "POSTER DESIGN<br/>Inspiration Via Doctor Strange ";

    }
    function setUI2(){
        var icon = document.getElementById('content_img_onclick');
        icon.style.background = "url(images/icon3.png) no-repeat";
        //对应更改相应文字
        var left_intro_word = document.getElementById('left_intro_word_onclick');
        left_intro_word.style.visibility = "visible";
        var intro_detail_p = document.getElementById('intro_detail_p');
        intro_detail_p.innerHTML = "LOGO DESIGN<br/>Design For IT Studio";
    }
    function setUI3(){
        var icon = document.getElementById('content_img_onclick');
        icon.style.background = "url(images/icon4.png) no-repeat";
        //对应更改相应文字
        var left_intro_word = document.getElementById('left_intro_word_onclick');
        left_intro_word.style.visibility = "visible";
        var intro_detail_p = document.getElementById('intro_detail_p');
        intro_detail_p.innerHTML = "POSTER DESIGN<br/>For OUC Badminton Association";
    }
    //设置photo图片
    function setPhoto(){
        var icon = document.getElementById('content_img_onclick');
        icon.style.background = "url(images/photo_word.png) no-repeat";
        hideIcon();
        var photo_list = document.getElementById('photo_li1');
        photo_list.style.display = "inline-block";
        var photo_list = document.getElementById('photo_li2');
        photo_list.style.display = "inline-block";
        var photo_list = document.getElementById('photo_li3'); 
        photo_list.style.display = "inline-block";
    }
    function setPhoto1(){
        var icon = document.getElementById('content_img_onclick');
        icon.style.background = "url(images/icon_photo1.png) no-repeat";
        //对应更改相应文字
        var left_intro_word = document.getElementById('left_intro_word_onclick');
        left_intro_word.style.visibility = "visible";
        var intro_detail_p = document.getElementById('intro_detail_p');
        intro_detail_p.innerHTML = "PHOTO BY YVETTE<br/>In Lugu Lake Of YunNan";
    }
    function setPhoto2(){
        var icon = document.getElementById('content_img_onclick');
        icon.style.background = "url(images/icon_photo2.png) no-repeat";
        //对应更改相应文字
        var left_intro_word = document.getElementById('left_intro_word_onclick');
        left_intro_word.style.visibility = "visible";
        var intro_detail_p = document.getElementById('intro_detail_p');
        intro_detail_p.innerHTML = "PHOTO BY YVETTE<br/>In Nanjing Road of Shanghai";
    }
    function setPhoto3(){
        var icon = document.getElementById('content_img_onclick');
        icon.style.background = "url(images/icon_photo3.png) no-repeat";
        //对应更改相应文字
        var left_intro_word = document.getElementById('left_intro_word_onclick');
        left_intro_word.style.visibility = "visible";
        var intro_detail_p = document.getElementById('intro_detail_p');
        intro_detail_p.innerHTML = "PHOTO BY YVETTE<br/>At Home in Foshan";
    }
    //设置share图片
    function setShare(){
        var icon = document.getElementById('content_img_onclick');
        icon.style.background = "url(images/share_word.png) no-repeat";
        //先将所有隐藏，相当于刷新一次
        hideIcon();
        var ui_list = document.getElementById('share_li1');
        ui_list.style.display = "inline-block";
        var ui_list = document.getElementById('share_li2');
        ui_list.style.display = "inline-block";
        var ui_list = document.getElementById('share_li3'); 
        ui_list.style.display = "inline-block";
    }
    function setShare1(){
        var icon = document.getElementById('content_img_onclick');
        icon.style.background = "url(images/share1.png) no-repeat";
        //对应更改相应文字
        var left_intro_word = document.getElementById('left_intro_word_onclick');
        left_intro_word.style.visibility = "visible";
        var intro_detail_p = document.getElementById('intro_detail_p');
        intro_detail_p.innerHTML = "LA LA LAND<br/>Emma Stone and Ryan Gosling";
    }
    function setShare2(){
        var icon = document.getElementById('content_img_onclick');
        icon.style.background = "url(images/share2.png) no-repeat";
        //对应更改相应文字
        var left_intro_word = document.getElementById('left_intro_word_onclick');
        left_intro_word.style.visibility = "visible";
        var intro_detail_p = document.getElementById('intro_detail_p');
        intro_detail_p.innerHTML = "BLACK SWAN<br/>Natalie Portman and Emma Stone";
    }
    function setShare3(){
        var icon = document.getElementById('content_img_onclick');
        icon.style.background = "url(images/share3.png) no-repeat";
        //对应更改相应文字
        var left_intro_word = document.getElementById('left_intro_word_onclick');
        left_intro_word.style.visibility = "visible";
        var intro_detail_p = document.getElementById('intro_detail_p');
        intro_detail_p.innerHTML = "BEFORE MIDNIGHT<br/>Ethan Hawke and Julie Delpy";
    }

    function hideIcon(){
        //对于最上方detail
        var left_intro_word = document.getElementById('left_intro_word_onclick');
        left_intro_word.style.visibility = "hidden";
        //对于UI
        var ui_list = document.getElementById('ui_li1');
        ui_list.style.display = "none";
        var ui_list = document.getElementById('ui_li2');
        ui_list.style.display = "none";
        var ui_list = document.getElementById('ui_li3'); 
        ui_list.style.display = "none";
        //对于photo
        var ui_list = document.getElementById('photo_li1');
        ui_list.style.display = "none";
        var ui_list = document.getElementById('photo_li2');
        ui_list.style.display = "none";
        var ui_list = document.getElementById('photo_li3'); 
        ui_list.style.display = "none";
        //对于share
        var ui_list = document.getElementById('share_li1');
        ui_list.style.display = "none";
        var ui_list = document.getElementById('share_li2');
        ui_list.style.display = "none";
        var ui_list = document.getElementById('share_li3'); 
        ui_list.style.display = "none";
    }
</script>
</head>
<body>

    <ul>
        <li id="demo" class="banner">
            
            <p class="banner_title">YVETTE'S BLOG</p>
            
            <div class="banner_more_logo">
                <a class="banner_more_logo_a" onclick=" document.getElementById('banner_ulist').style.opacity = '1'" href="#"></a>
            </div>
            <div class="banner_more_message">
                <ul class="banner_ul" id="banner_ulist">
                    <li class="banner_li"><a class="banner_li_a" href="http://localhost:8080/HelloWorld/IntroMe.jsp">about me</a></li>
                    <li class="banner_li"><a class="banner_li_a" href="http://yvettemuki.lofter.com/">my creation</a></li>
                    <li class="banner_li"><a class="banner_li_a" href="https://yvettemuki.github.io./">another blog</a></li>
                </ul>
            </div>

            
        </li>
        <li id="demo" class="content_intro">
            <div class="content_intro_div">
                <div class="left_intro_word" id="left_intro_word_onclick">
                    <img class="left_intro_sign_img" src="images/intro_sign.png"/>
                    <div class="left_intro_word_detail"><p id="intro_detail_p">POSTER DESIGN<br/>OUC Badminton Association</p></div>
                </div>
                <div class="content_img_icon" id="content_img_onclick"></div>
                <ul class="ui_ulist" id="ui_ulist_id" style="margin-top: -20px">
                    <li class="ui_li" id="ui_li1"><a href="javascript:void(0)" onclick="setUI1()"></a></li>
                    <li class="ui_li" id="ui_li2"><a href="javascript:void(0)" onclick="setUI2()"></a></li>
                    <li class="ui_li" id="ui_li3"><a href="javascript:void(0)" onclick="setUI3()"></a></li>
                </ul>
                <ul class="photo_ulist" id="photo_ulist_id" style="margin-top: -20px" >
                    <li class="photo_li" id="photo_li1"><a href="javascript:void(0)" onclick="setPhoto1()"></a></li>
                    <li class="photo_li" id="photo_li2"><a href="javascript:void(0)" onclick="setPhoto2()"></a></li>
                    <li class="photo_li" id="photo_li3"><a href="javascript:void(0)" onclick="setPhoto3()"></a></li>
                </ul>
                <ul class="share_ulist" id="share_ulist_id" style="margin-top: -20px" >
                    <li class="share_li" id="share_li1"><a href="javascript:void(0)" onclick="setShare1()"></a></li>
                    <li class="share_li" id="share_li2"><a href="javascript:void(0)" onclick="setShare2()"></a></li>
                    <li class="share_li" id="share_li3"><a href="javascript:void(0)" onclick="setShare3()"></a></li>
                </ul>

            </div>
           
            <div class="content_intro_more">
                <div class="xian"></div>
                
                <ul class="content_intro_ul" id="content_intro_ulist">
                    <li class="content_intro_li"><a class="content_intro_link" id="content_intro_link1" href="javascript:void(0)" onclick="setUI()">UI -></a></li>
                    <li class="content_intro_li"><a class="content_intro_link" id="content_intro_link2" href="javascript:void(0)" onclick="setPhoto()">photography -></a></li>
                    <li class="content_intro_li"><a class="content_intro_link" id="content_intro_link3" href="javascript:void(0)" onclick="setShare()">share -></a></li>
                </ul>
                
            </div>
                 
               
            <div class="content_intro_word">
                <p class="intro_word_control">My name is Yvette</p>
                <p class="intro_word_control">I like much of things</p>
                <p class="intro_word_control">as far as</p>
                <p class="intro_word_control">it is funny and creative</p>
            </div>
        </li>
        <li id="demo" class="last_part">
            <div class="last_part_review">
                <img class="review_title_img" src="images/review_title.png"/>
                <form action="servlet/ReviewServlet" class="review_form" method="GET">
                    <input type="text" name="name" class="last_part_input" placeholder="name" style="text-family:'Microsoft YaHei'"/></br>
                    <textarea class="last_part_textarea" name="content" cols="84" rows="13"  style="border: 0px solid "></textarea></br>
                    <input name="submit" id ="submit" type="submit" value="" class="review_button"/>
                </form>
            </div>
            <div class="last_part_footer">
                <p class="footer_word">mukilimmj@gmail.com</p>
                <p class="footer_word">http://yvettemuki.lofter.com/</p>
                <p class="footer_word">copyright© Yvettemuki in 2017</p>
            </div>
            
        </li>
        <li id="demo"></li>
        <li id="demo"></li>
    </ul>
</body>
<script src="http://itakeo.com/down/jump.js"></script>
<script src="http://itakeo.com/down/wheel.js"></script>
<script>
window.onload = function(){
    ;(function(){
        jump.init('top',{mouse : false,speed:0});
        //获取每个li元素，off为开关，num为当前第几屏
        var li = document.querySelectorAll("#demo"),off = true,num = 0;
        //屏幕可视区的高度
        var height = document.documentElement.clientHeight;
        //写个方法把每个li的高度设置成屏幕的高度
        function setHeight (){
            for(var i = 0;i < li.length;i++){
               li[i].style.height = height +'px';
            };
        };
        setHeight ();
        //滚动方法
        function move(){
            //滚动的距离就等于屏幕高度乘以当前num数，注意，需要把鼠标干预设置成false
            jump.init(height*num,{mouse : false,speed:400},function(){
                off = true
            })
        };
        //鼠标滚动的时候
        wheel.init(document,function(e){
            if(!off) return

            //鼠标滚动的时候，设置成false，防止多次触发
            off = false;
            if(e){
                //向下滚动，并判断num是否大于li的个数
               num = num++ >= li.length-1 ?  li.length-1 : num;
            }else{
                //向上滚动，并判断num是否小于li的个数
                num = num-- <=0 ? 0 : num;
            };
            //执行滚动
            move();
        });
        window.onresize = function(){
            height = document.documentElement.clientHeight
            setHeight ();
            move()
        };
    })();

    
};

/*document.getElementById('content_intro_link1').onclick = function(){
    setUI()
};
setUI(){
    var uilist = document.getElementById('ui_ulist_id');
    uilist.style.cssText = "opacity = 1";
}*/


</script>
</html>