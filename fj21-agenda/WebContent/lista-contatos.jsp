<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />

<html>
	<head>
	</head>
	<body>
	<c:import url="cabecalho.jsp" />
	
		<table>
			<c:forEach var="contato" items="${dao.lista }">
				<tr>
					<td>${contato.nome }</td>
					
					<td>
						<c:if test="${not empty contato.email }">
							<a href="mailto:${contato.email }">${contato.email }</a>
						</c:if>
						<c:if test="${empty contato.email }">
							Email não informado.
						</c:if>
					</td>
					<td>${contato.endereco }</td>
					<td>${contato.dataNascimento.time }</td>
				</tr>
			</c:forEach>
		</table>
		
	<c:import url="rodape.jsp" />	
	</body>
</html>