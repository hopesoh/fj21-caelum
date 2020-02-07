<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />

<html>
	<head>
	</head>
	<body>
		<table>
			<c:forEach var="contato" items="${dao.lista }">
				<tr>
					<td>${contato.nome }</td>
					<td>${contato.email }</td>
					<td>${contato.endereco }</td>
					<td>${contato.dataNascimento.time }</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>