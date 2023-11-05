<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Contato - Tropical</title>
  <link rel="stylesheet" href="../../assets/css/style.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
  <link rel="shortcut icon" href="../../assets/img/Imagens/icone.png" type="image/x-icon" />
</head>

<body class="contato">
  <div class="container-fluid" id="principal">
    <header class="row menu">
      <nav class="navbar navbar-expand-lg navbar-ligth bg-primary">
        <div class="col-1 logo">
          <img src="../../assets/img/Imagens/Logo Agência de Viagens.png" alt="Logo da empresa" />
        </div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Alterna navegação">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="col justify-content-center collapse navbar-collapse" id="navbarNav">
          
 <jsp:include page="../../components/menu.jsp">
						<jsp:param name="home" value="../../index.jsp" />
						<jsp:param name="clientes" value="../../cliente" />
						<jsp:param name="contatos" value="../../contato" />
						<jsp:param name="promocoes" value="../../promocoes.jsp" />
						<jsp:param name="sobre" value="../../sobre.jsp" />
					</jsp:include>
          <div class="row btnHeader">
            <a class="btn btn-primary active margin-left-1" aria-current="page" href="../clientes/cadastro.html">Cadastre-se</a>
            <a class="btn btn-primary active margin-left-1" aria-current="page" href="#">Login</a>
          </div>
        </div>
 
  </nav>
  </header>
 </div>
 
  <main>
    <div class=" text-secondary text-center">Dúvidas, parcerias e reclamações </div>
      <div class="container formulario">
        <form action="../../contato-create">
			  <div class="form-floating">
            <input class="form-control mt-1" type="hidden" name="id" readonly  value="<%=request.getParameter("id")%>" placeholder="Leave a comment here"></input>
          
          </div>
          <div class="form-floating mt-4">
            <textarea class="form-control" name="assunto" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
            <label for="floatingTextarea">Assunto</label>
          </div>
         
          <div class="form-floating">
            <textarea class="form-control mt-1" name="mensagem" placeholder="Leave a comment here" id="floatingTextarea2"
              style="height: 100px"></textarea>
            <label for="floatingTextarea2">Insira sua mensagem </label>
          </div>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</html>