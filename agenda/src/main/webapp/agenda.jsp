<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.JavaBeans" %>
    <%@ page import="java.util.ArrayList" %>
    
<%
	@ SuppressWarnings ("unchecked")
	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>)request.getAttribute("contatos");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agenda de contatos</title>
<link rel="icon" href="imagens/favicon.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Agenda de contatos</h1>
	<div>
		<a href="novo.html" class="botao1">Novo contato</a>
		<a href="report" class="botao1">Relatório</a>
	</div>
	<table>
		<thead>
			<tr>
				<th>ID</th><th>Nome</th><th>Fone</th><th>Email</th><th></th><th></th>
			</tr>
		</thead>
		
		<tbody>
			<%for(int i =0; i< lista.size(); i++){%>
				<tr>
					<td><%=lista.get(i).getIdcon()%></td><td><%=lista.get(i).getNome()%></td><td><%=lista.get(i).getFone()%></td><td><%=lista.get(i).getEmail()%></td>
					<td><a class="botao1" href="select?idcon=<%=lista.get(i).getIdcon()%>">Editar</a></td>
					<td><a class="botao1" href="javascript:confirmar(<%=lista.get(i).getIdcon()%>)">Excluir</a></td>
				</tr>
			<% } %>
			
		</tbody>
	</table>
	<script src="scripts/confirmador.js"></script>
</body>
</html>