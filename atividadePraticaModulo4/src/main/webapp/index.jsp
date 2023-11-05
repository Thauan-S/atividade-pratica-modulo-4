<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Home - Tropical</title>
<link rel="stylesheet" href="./assets/css/style.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous" />
<link rel="shortcut icon" href="./assets/img/Imagens/icone.png" type="image/x-icon" />
</head>

<body>
	<div class="container-fluid" id="principal">
		<header class="row menu">
			<nav class="navbar navbar-expand-lg navbar-ligth bg-primary">
				<div class="col-1 logo">
					<img src="./assets/img/Imagens/Logo Agência de Viagens.png"
						alt="Logo da empresa" />
				</div>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Alterna navegação">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="col justify-content-center collapse navbar-collapse"
					id="navbarNav">
					<jsp:include page="./components/menu.jsp">
						<jsp:param name="home" value="./index.jsp" />
						<jsp:param name="clientes" value="cliente" />
						<jsp:param name="contatos" value="contato" />
						<jsp:param name="promocoes" value="./promocoes.jsp" />
						<jsp:param name="sobre" value="./sobre.jsp" />
					</jsp:include>

					<div class="row btnHeader">
						<a class="btn btn-primary active margin-left-1"
							aria-current="page" href="./views/clientes/cadastro.html">Cadastre-se</a> <a
							class="btn btn-primary active margin-left-1" aria-current="page"
							href="#">Login</a>
					</div>
				</div>
			</nav>
		</header>
	</div>

	<main>
      <div class="text-danger text-center">
        <div class="row">
          <div class="col mb-1">
            <div class="card h-100">
              <img class="img rounded" src="./assets/img/Imagens/praia.jpg" class="card-img-top" alt="..." />
              <div class="card-body ">
                <h5 class="card-title">Explore o mundo</h5>
                <p class="card-text">
                  De praias paradisíacas a metrópoles vibrantes, nossa agência
                  de viagens está pronta para tornar seus sonhos realidade.
                  Seja qual for o seu desejo de aventura, estamos aqui para
                  fazer cada momento ser memorável.
                  Seja qual for o seu desejo de aventura, estamos aqui para
                  fazer cada momento ser memorável.
                </p>
              </div>
              <div class="card-footer">
                <a class="btn btn-primary btnpromo text-end" href="./pacote">Conferir Destinos</a>
              </div>
            </div>
          </div>
          <div class="col mb-1">
            <div class="card h-100">
              <img class="img rounded" src="./assets/img/Imagens/venda-com-desconto-especial-em-viagens.jpg" class="card-img-top"
                alt="..." />
              <div class="card-body ">
                <h5 class="card-title">Os melhores preços do mercado</h5>
                <p class="card-text">
                  Oferecemos preços competitivos para tornar suas aventuras
                  acessíveis e inesquecíveis. Com opções para todos os
                  orçamentos, garantimos transparência e excelentes ofertas em
                  passagens, hospedagem e pacotes turísticos.
                </p>
              </div>
              <div class="card-footer">
                <a class="btn btn-primary btnpromo" href="./promocoes.jsp">Conferir Ofertas</a>
              </div>
            </div>
          </div>
          <div class="col mb-1">
            <div class="card h-100">
              <img class="img rounded" src="./assets/img/Imagens/primeiro-sinal-de-seguranca-na-natureza.jpg" class="card-img-top"
                alt="..." />
              <div class="card-body ">
                <h5 class="card-title">Segurança</h5>
                <p class="card-text">
                  Na nossa agência de viagens, a segurança é a nossa
                  prioridade número um. Nossos especialistas garantem viagens
                  bem planejadas, parceiros confiáveis e aconselhamento sobre
                  medidas de segurança em todos os destinos.
                </p>
              </div>
            </div>
          </div>
          <div class="col mb-1">
            <div class="card h-100">
              <img class="img rounded" src="./assets/img/Imagens/go.jpg" class="card-img-top" alt="..." />
              <div class="card-body ">
                <h5 class="card-title">Confiabilidade</h5>
                <p class="card-text">
                  Aqui na nossa agência, colocamos a confiança no centro de
                  tudo o que fazemos. Desde o momento em que você entra em
                  contato conosco, até o dia em que você volta para casa após
                  a viagem dos seus sonhos, estaremos ao seu lado, cuidando de
                  todos os detalhes com diligência e cuidado.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="mt-5  ">
        <div id="carouselExampleCaptions" class="carousel slide ">
          <div class="carousel-indicators ">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
              aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
              aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
              aria-label="Slide 3"></button>
          </div>
          <div class="rounded carousel-inner">
            <div class="carousel-item active ">
              <img src="./assets/img/Imagens/pexels-pixabay-279574.jpg" class="d-block  w-100" alt="..." />
              <div class="carousel-caption d-none d-md-block">
                <h5 class="text-dark">Explore locais incriveis</h5>
              </div>
            </div>
            <div class="carousel-item">
              <img src="./assets/img/Imagens/paisagemaaa.jpg" class="d-block w-100" alt="..." />
              <div class="carousel-caption d-none d-md-block">
                <h5>Conheça o mundo</h5>
              </div>
            </div>
            <div class="carousel-item">
              <img src="./assets/img/Imagens/desert.jpg" class="d-block w-100" alt="..." />
              <div class="carousel-caption d-none d-md-block">
                <h5>Os mais variados locais</h5>
              </div>
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon bg-dark" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon bg-dark" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
    </main>
	<footer class="bg-dark  text-white text-center mt-1  row">
		Tropicalagencia@exemplo.com <br> Tel : (00) 0000-0000
		<div class="linhaFooter">&copy; Tropical Todos os direitos
			reservados</div>
	</footer>
	
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
	crossorigin="anonymous"></script>

</html>