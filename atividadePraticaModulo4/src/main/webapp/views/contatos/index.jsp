<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contatos</title>

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
          <img src="./assets/img/Imagens/Logo Ag�ncia de Viagens.png" alt="Logo da empresa" />
        </div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Alterna navega��o">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="col justify-content-center collapse navbar-collapse" id="navbarNav">
         <jsp:include page="../../components/menu.jsp">
						<jsp:param name="home" value="./index.jsp" />
						<jsp:param name="clientes" value="./cliente" />
						<jsp:param name="contatos" value="./contato" />
						<jsp:param name="promocoes" value="./promocoes.jsp" />
						<jsp:param name="sobre" value="./sobre.jsp" />
					</jsp:include>
          <div class="row btnHeader">
            <a class="btn btn-primary active margin-left-1" aria-current="page" href="#">Cadastre-se</a>
            <a class="btn btn-primary active margin-left-1" aria-current="page" href="#">Login</a>
          </div>
        </div>
  
  </nav>
  </header>
</div>
	<div class="container tableClients">
		
		<h5>Mensagens Recebidas</h5>
	
	<table class="table table-responsive table hover">
		<thead class="table-dark">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">assunto</th>
				<th scope="col">Mensagem</th>
				<th scope="col">A��es</th>
			
				
			</tr>
		</thead>
		<tbody>
				<jstl:forEach items="${mensagens}" var="mensagem">
				<tr>
					<td>${mensagem.idContato}</td>
					<td>${mensagem.assunto}</td>
					<td>${mensagem.mensagem}</td>
					<td>
					<a href="contato-edit?id=${mensagem.idContato}" class="btn btn-success">Editar</a>
						<a href="contato-delete?id=${mensagem.idContato}" onclick="return confirm('Deseja Excluir? a mensagem ${mensagem.mensagem}')" class="btn btn-danger">Excluir</a>
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
	<footer class="bg-dark  text-white text-center mt-1 footerAlinhado ">
    Tropicalagencia@exemplo.com
    <br>
    Tel : (00) 0000-0000
    <div class="linhaFooter">
      &copy; Tropical Todos os direitos reservados
    </div>
  </footer>
</body>
</html>