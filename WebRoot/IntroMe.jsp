<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html style="overflow-y: hidden;">
 <head>
  <meta charset='utf-8'>
  <title>About Me</title>
  <style type="text/css">
    
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,button,textarea,p,blockquote,th,td { margin:0; padding:0; }
body { background:#fff; color:#555; font-size:14px; font-family: "Peace Sans", Verdana, Arial, Helvetica, sans-serif; }
td,th,caption { font-size:14px; }
h1, h2, h3, h4, h5, h6 { font-weight:normal; font-size:100%; }
address, caption, cite, code, dfn, em, strong, th, var { font-style:normal; font-weight:normal;}
a {  text-decoration:none; }
a:hover { text-decoration:none; color: #555; }
img { border:none; }
ol,ul,li { list-style:none; }
input, textarea, select, button { font:14px Verdana,Helvetica,Arial,sans-serif; }
table { border-collapse:collapse; }
html {overflow-y: scroll;} 
  	#divTyping{
  		font-family: 'Peace Sans';
  		font-size: 26px;
  		word-spacing: 4px;
  		height: 300px;
  		width: 800px;
  		margin:200px;
      padding-top: 250px;
      color: #000000;
  	}
  	.intro_img{
  		position: relative;
      top: -200px;
  		background: url(images/introMe.png) no-repeat;
  		background-size: 100%;
  		width: 100%;
  		height: 800px;
  	}
    .return{
      position: relative;
      display: block;
      top: -200px;
      left: 860px;
      height: 34px;
      width: 96px;
      background: url(images/return.png) no-repeat;
      background-size: 100%;
      transition: background 0.3s;
    }
    
    .return:hover{
      position: relative;
      display: block;
      top: -200px;
      left: 860px;
      height: 34px;
      width: 96px;
      background: url(images/return_hover.png) no-repeat;
      background-size: 100%;
    }
    .return_div{
      position: relative;
      
    }
  </style>
 </head>
 <body>
	 <div class="intro_img">
	  	<div id='divTyping'></div>
      <div class="return_div"><a class="return" href="http://localhost:8080/HelloWorld/MyWeb.jsp"></a></div>
	 </div>
   <script>
   var str = 'Hello, my name is Yvette, you can also call me Muki, I am a college student in Ocean University of China. My major is Computer Science and Technology. I like to explore new things and desire to create something. I like to find inspiration. If you also enjoy creating, we can make friends!';
   var i = 0;
   function typing(){
    var divTyping = document.getElementById('divTyping');
    if (i <= str.length) {
     divTyping.innerHTML = str.slice(0, i++) + '_';
     setTimeout('typing()', 150);//递归调用
    }
    else{
     divTyping.innerHTML = str;//结束打字,移除 _ 光标
    }
   }
   typing();
  </script>
  
 </body>
</html>
