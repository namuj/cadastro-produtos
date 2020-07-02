<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"  href="resources/css/home.css">
<link rel="stylesheet"  href="resources/css/cadastro.css">


<title>Cadastro de Usuário</title>
</head>
<body>
<div class="barra">
<center>
		<a href="home.jsp" ><img src="resources/img/Home.svg" alt="Página Inicial" title="Home" witdth="100px" height="100px"></a>
		<a href="salvarUsuario?acao=listartodos" ><img src="resources/img/Usuario.svg" alt="Usuário" title="Usuario" witdth="100px" height="100px"></a>
		<a href="acessonegado.jsp" ><img src="resources/img/Estoque.svg" alt="Estoque" title="Estoque" witdth="100px" height="100px"></a>
		<a href="acessonegado.jsp" ><img src="resources/img/Relatorios.svg" alt="Relatórios" title="Relatorio" witdth="100px" height="100px"></a>
		<a href="acessonegado.jsp" ><img src="resources/img/Calendario.svg" alt="Calendário" title="Calendario" witdth="100px" height="100px"></a>
	</center>
</div>

<br>
<br>
<br>
<br>
<br>
<br>
<br>

<center>
  
	<form action="salvarUsuario" method="post">
		<tr>
			<td>Código:</td>
			<td><input  type="text" readonly="readonly" id="id" name="id" value="${user.id}"></td><br>
		</tr>
		<tr>
			<td >Login	:</td>
			<td><input type="text" id="login" name="login" value="${user.login}"></td><br>
		</tr>
		<tr>
			<td >Senha	:</td>
			<td><input  type="password" id="password" name="password" value="${user.password}"></td><br><br>
		</tr>
		<input type="submit" value="Salvar" width="100px" leght="100px">
	</form>
 
 </center>

<br>
<br>
<br>
<br>
<table>
<tr><th>ID</th><th>Login</th><th>Password</th><th>Excluir</th><th>Editar</th></tr>
	<c:forEach items="${usuarios}" var="user">
		<tr>
			<td style="width:500px"><c:out value="${user.id}"></c:out></td>
			<td style="width:500px"><c:out value="${user.login}"></c:out></td>
			<td style="width:500px"><c:out value="${user.password}"></c:out></td>
			<td style="width:100px"><a href="salvarUsuario?acao=delete&user=${user.id}"><img src="resources/img/excluir.png" alt="Excluir" title="Excluir" witdth="20px" height="20px"></a></td>
			<td style="width:100px"><a href="salvarUsuario?acao=edit&user=${user.id}"><img src="resources/img/edit.png" alt="Editar" title="Editar" witdth="20px" height="20px"></a></td>
			
		</tr>
	</c:forEach>


</table>


</body>
</html>