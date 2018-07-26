<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<h1>注册</h1>
	<p style="color:red;font-weight:900">${requestScope.msg }</p>
	<form action="<c:url value='/RegistServlet'/>" method="post">
		用户名: <input type="text" name="username" value="${requestScope.user.username }"/>
				<span style="color: red">${errors.username }</span>
				<br>
		密&nbsp;&nbsp;&nbsp;码: <input type="password" name="password" value="${user.password }"/>
								<span style="color: red">${errors.password }</span>
								<br>
		验证码: <input type="text" name="verifyCode" size="6"/>
	           <img src='<c:url value='/VerifyCodeServlet'/>' id="img" border="1px"/>
	           <a href="javascript:_change()">换一张</a>
	           <span style="color: red">${errors.verifyCode }</span>
	           <br>
		<input type="submit" value="提交"/>
		
		<!-- ${pageContext.request.contextPath } -->
		
	</form>
	
	<script type="text/javascript">
		function _change(){
			var img = document.getElementById("img");
			img.src="<c:url value='/VerifyCodeServlet'/>?"+new Date().getTime();
		}
	</script>
	
  </body>
</html>
