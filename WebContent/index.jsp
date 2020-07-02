<jsp:useBean id="calcula" class="beans.BeanCadastroProdutos" type="beans.BeanCadastroProdutos" scope="page"></jsp:useBean>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
#
<!-- Tela HTML de Login
 	 @author: Juman Fernandes Santos Sousa
  -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"  href="resources/css/login.css">

<title>Entrar</title>
</head>
<body>
<div class="login-page">
  <div class="form">
  
     
    </form>
    <form action="LoginServlet" method="post" class="login-form">
      <input type="text" id="login" name="login" placeholder="username"/>
      <input type="password" id="password" name="password" placeholder="password"/>
      <button type="submit" >Login</button>
      
    </form>
  </div>
</div>
</body>
</html>