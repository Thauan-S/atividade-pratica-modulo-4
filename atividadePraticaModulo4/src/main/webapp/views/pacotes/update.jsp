<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Atualizar - Tropical</title>
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
						<jsp:param name="home" value="../../index.jsp" />
						<jsp:param name="clientes" value="cliente" />
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

  <main>
    <div class="container formulario">
      <form action="./pacote-update">
       
        <div class="row">
            <input type="hidden" placeholder="Insira seu nome" class="form-control" id="id" name="id"  value="${pacote.idPacote}"  aria-describedby="emailHelp"
              required>
          <div class="mb-3 col">
         
            <label for="nome" class="form-label">Destino</label>
            <input type="text" placeholder="Insira o nome do destino" class="form-control" id="nome" name="destino"  value="${pacote.destino}" aria-describedby="emailHelp"
              required>
          </div>
          <div class="mb-3 col">
            <label for="telefone" class="form-label">Descrição</label>
            <input type="tel"  value="${pacote.descricao}" placeholder="Insira a descrição do local" class="form-control" id="telefone" name="descricao" >
          </div>
          <div class="mb-3 col">
            <label for="Data de Nascimento" class="form-label">Duração em dias</label>
            <input value="${pacote.duracaoEmDias}" type="number" placeholder="Insira a duração em dias" class="form-control" id="Data de Nascimento" name="duracao">
          </div>
        </div>
        <div class="mb-1 row">
          <div class="mb-3 col-5">
            <label for="cep" class="form-label">Preço</label>
            <input type="text" value="${pacote.preco}" placeholder="Insira o preço ex: 2000.00"  name="preco" class="form-control" id="cep"
              required>
          </div>
        </div>
       
        <button type="submit" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false"
          aria-controls="collapseExample" class="btn btn-primary mt-2">Salvar</button>
<a href="./pacote" class="btn btn-primary mt-2">Cancelar</a>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</html>