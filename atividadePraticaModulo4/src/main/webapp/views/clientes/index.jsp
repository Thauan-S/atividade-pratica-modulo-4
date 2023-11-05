<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Clientes</title>

<link rel='stylesheet' href='./assets/css/style.css'/>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
	 <link rel="shortcut icon" href="./assets/img/Imagens/icone.png" type="image/x-icon" />
</head>
<body class="contato">
<div class="container-fluid" id="principal">
    <header class="row menu">
      <nav class="navbar navbar-expand-lg navbar-ligth bg-primary">
        <div class="col-1 logo">
          <img src="./assets/img/Imagens/Logo Agência de Viagens.png" alt="Logo da empresa" />
        </div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Alterna navegação">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="col justify-content-center collapse navbar-collapse" id="navbarNav">
         <jsp:include page="../../components/menu.jsp">
						<jsp:param name="home" value="./index.jsp" />
						<jsp:param name="clientes" value="./cliente" />
						<jsp:param name="contatos" value="contato" />
						<jsp:param name="promocoes" value="./promocoes.jsp" />
						<jsp:param name="sobre" value="./sobre.jsp" />
					</jsp:include>
          <div class="row btnHeader">
            <a class="btn btn-primary active margin-left-1" aria-current="page" href="./views/clientes/cadastro.html">Cadastre-se</a>
            <a class="btn btn-primary active margin-left-1" aria-current="page" href="#">Login</a>
          </div>
        </div>
  
  </nav>
  </header>
</div>
	<div class="container tableClients">
		
		<h5>Clientes cadastrados</h5>
	<a href="./views/clientes/cadastro.html" class="btn btn-success">Cadastrar Novo Cliente</a> 
	<table class="table table-responsive table hover">
		<thead class="table-dark">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Nome</th>
				<th scope="col">telefone</th>
				<th scope="col">Data de nascimento</th>
				<th scope="col">Cep</th>
				<th scope="col">Email</th>
				<th scope="col">Ações</th>
			</tr>
		</thead>
		<tbody>
				<jstl:forEach items="${clientes}" var="cliente">
				<tr>
					<td>${cliente.idCliente}</td>
					<td>${cliente.nome}</td>
					<td>${cliente.telefone}</td>
					<td>${cliente.datanascimento}</td>
					<td>${cliente.cep}</td>
					<td>${cliente.email}</td>
					<td>
					<a href="cliente-edit?id=${cliente.idCliente}" class="btn btn-success">Editar</a>
					<a href="./views/contatos/cadastro.jsp?id=${cliente.idCliente}" class="btn btn-success">Mensagem</a> 
					<a href="pacote-reserva?idCli=${cliente.idCliente}" class="btn btn-success">Fazer Reserva</a> 
						<a href="cliente-delete?id=${cliente.idCliente}" onclick="return confirm('Deseja Excluir? o cliente ${cliente.idCliente}')" class="btn btn-danger">Excluir</a>
					</td>
						
				</tr>
			</jstl:forEach>
			
			
		</tbody>
		
	</table>
	<div class="collapse mt-1" id="collapseExample">
          <div class="card alert alert-success text-center card-body">
            Dados enviados com sucesso
          </div>
        </div>
	</div>
</body>
</html>