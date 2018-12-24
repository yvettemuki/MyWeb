<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>Error</title>
	<meta charset="utf-8">
	<style type="text/css">
		html{
			text-align: center;
		}
		.error_word{
			position: relative;
			margin:  0 auto;
			top: 320px;
			font-family: 'Peace Sans';
			font-size:32px;

		}
		.error{

		}
	</style>
</head>
<body>
	<p class="error_word">Sorry,you have get lost~</p>
	<a class="erroe_return" href="#"></a>

</body>
</html>