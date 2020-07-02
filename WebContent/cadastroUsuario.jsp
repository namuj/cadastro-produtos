<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"  href="resources/css/home.css">
<title>Cadastro de Usuário</title>
</head>
<body>
<div class="barra">
<center>
		<a href="home.jsp" ><img src="resources/img/Home.svg" alt="Página Inicial" title="Home" witdth="100px" height="100px"></a>
		<a href="cadastroUsuario.jsp" ><img src="resources/img/Usuario.svg" alt="Usuário" title="Usuario" witdth="100px" height="100px"></a>
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
<br>
<br>
<br>
<form action="salvarUsuario" method="post">
	<tr>
		<td>Código:</td>
		<td><input type="text" readonly="readonly" id="id" name="id" value="${user.id}"></td>
	</tr>
	<tr>
		<td>Login:</td>
		<td><input type="text" id="login" name="login" value="${user.login}"></td>
	</tr>
	<tr>
		<td>Senha:</td>
		<td><input type="password" id="password" name="password" value="${user.password}"></td>
	</tr>
	<input type="submit" value="Salvar">
</form>

<table>
	<c:forEach items="${usuarios}" var="user">
		<tr>
			<td style="width:150px"><c:out value="${user.id}"></c:out></td>
			<td style="width:150px"><c:out value="${user.login}"></c:out></td>
			<td><c:out value="${user.password}"></c:out></td>
			<td><a href="salvarUsuario?acao=delete&user=${user.login}">Excluir</a> </td>
			<td><a href="salvarUsuario?acao=edit&user=${user.login}">Editar</a> </td>
		</tr>
	</c:forEach>


</table>


</body>
</html>