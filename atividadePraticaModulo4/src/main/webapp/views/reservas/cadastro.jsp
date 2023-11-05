<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>
   
    
<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Reservas - Tropical</title>
  <link rel="stylesheet" href="./assets/css/style.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
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
 
  <main class="contato">
    
      <div class="container formulario">
        <form action="../../reserva-create">
			  <div class="form-floating">
           
            <input type="hidden" readonly  class="idCli" name="idCliente" value="<%=request.getParameter("idCli")%>" />
          </div>
        
         <table class="table table-responsive table hover">
		<thead class="table-dark">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Destino</th>
				<th scope="col">Descrição</th>
				<th scope="col">Duração em dias</th>
				<th scope="col">Preço</th>
				<th scope="col">Ações</th>
			</tr>
		</thead>
		<tbody>
		
         <jstl:forEach items="${pacote}" var="pacote">
         
				<tr>
				<%-- antes esse tava entre  idpacote} aqui  </td   <input type="hidden" class="idPacote" value="${pacote.idPacote}">  --%>
					<td>${pacote.idPacote}</td>
					<td>${pacote.destino}</td>
					<td>${pacote.descricao}</td>
					<td>${pacote.duracaoEmDias}</td>
					<td>${pacote.preco}</td>
					
					<td>
					<%-- <a href="reserva-create?id=${pacote.idPacote}&idCli=<%=request.getParameter("idCli")%>&dataviagem=${dataviagem}" class="btn btn-success">Fazer Reserva</a>  --%>
						
						<a href="reserva-data?idPacote=${pacote.idPacote}&idCli=<%=request.getParameter("idCli")%>" id="meuLink" class="btn linkq btn-success">Fazer Reserva</a>
						<a href="pacote-edit?id=${pacote.idPacote}" class="btn btn-success">Editar</a>
						<!--  href ="reserva-create?id="+pacoteId+"&idCli="+idCli+"&dataviagem="+dataviagem; -->
					</td>
						
				</tr>
				
			</jstl:forEach>
			
           </tbody>
		
	</table>
          <button type="submit button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false"
            aria-controls="collapseExample" class="btn btn-primary mt-2 mb-2">Enviar</button>

          <div class="collapse mt-1" id="collapseExample">
            <div class="card alert alert-success text-center card-body">
              Dados enviados com sucesso
            </div>
          </div>
        </form>
      </div>


  </main>
  <footer class="bg-dark  text-white text-center mt-1 footerAlinhado ">
    Tropicalagencia@exemplo.com
    <br>
    Tel : (00) 0000-0000
    <div class="linhaFooter">
      &copy; Tropical Todos os direitos reservados
    </div>
  </footer>
</body>
 <script>




 
 /* 

	     // Realize alguma ação com o elemento
 document.querySelector(".linkReserva").addEventListener("click", function(e) {
    e.preventDefault(); // Evita que o link seja seguido imediatamente
    // Obtém o valor do campo de entrada dataviagem
    let dataviagem =  document.querySelector(".dataviagem").value;
    // Constrói a URL com o valor do campo de entrada
    let pacoteId = document.querySelector(".linkReserva").value ; // Substitua pelo valor real de pacote.idPacote
 
   let idCli = document.querySelector(".idCli").value; 
	// Obtenha os valores com base no número do botão
        console.log(pacoteId)
    // Atualiza o atributo href do link com a URL construída
    href ="reserva-create?id="+pacoteId+"&idCli="+idCli+"&dataviagem="+dataviagem;
    console.log(pacoteId,idCli,dataviagem)
      window.location.href = href; // Realiza o redirecionamento 
}); */
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</html>