<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Contato - Tropical</title>
  <link rel="stylesheet" href="./assets/css/style.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
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
        <div class="row">
          <h1 class="bg-white text-center">Ofertas do dia</h1>
          <div id="carouselExample" class="carousel slide">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <div class="row">
                  <div class="card-group">
                    <div class="card border-info">
                      <img src="./assets/img/Imagens/cataratas.jpg" class="card-img-top img-card" alt="Cataratas do iguaçu" />
                      <div class="card-body text-center">
                        <h5 class="card-title">Cataratas do iguaçu</h5>
                        <p class="card-text">
                          Lorem ipsum dolor sit amet, consectetur adipiscing
                          elit. Sed auctor metus nec mauris sodales
                          sollicitudin. Maecenas placerat libero libero, vitae
                          lacinia leo cursus sed. Quisque vitae ligula ac enim
                          bibendum convallis ut a magna. Praesent quis aliquet
                          purus. Proin sem sem, lobortis eget sollicitudin vel,
                          sollicitudin eget dui.
                        </p>
                        
                      </div>
                      <div class="card-footer text-center">
                        <a href="#" class="btn  btn-info btnpromo ">
                          899,99 R$ /sem
                        </a>
                      </div>
                    </div>
                    <div class="card border-info">
                      <img src="./assets/img/Imagens/Sydney.jpg" class="card-img-top img-card" alt="Ópera de Sydney" />
                      <div class="card-body text-center">
                        <h5 class="card-title">Sydney Austrália</h5>
                        <p class="card-text">
                          Ut eu sapien ac eros porta laoreet. Vestibulum ante
                          ipsum primis in faucibus orci luctus et ultrices
                          posuere cubilia curae; Mauris libero ipsum, pulvinar
                          non tristique at, imperdiet id purus. Cras suscipit
                          felis at quam posuere, a tincidunt tellus vehicula.
                          Donec gravida dictum diam quis sagittis. Integer metus
                          risus, viverra eu porttitor non, malesuada a massa.
                          Etiam bibendum scelerisque eleifend. Fusce mauris leo,
                          euismod ut ligula quis, ullamcorper tristique dui.
                        </p>
                      </div>
                      <div class="card-footer text-center">
                        <a href="#" class="btn  btn-info btnpromo ">
                          1099,99 R$ /sem
                        </a>
                      </div>
                    </div>
                    <div class="card border-info">
                      <img src="./assets/img/Imagens/Dubai.jpg" class="card-img-top img-card" alt="Foto do Burj Al Arab , um hotel em formato de vela de barco" />
                      <div class="card-body text-center">
                        <h5 class="card-title">Dubai</h5>
                        <p class="card-text">
                          Vestibulum ac tristique lacus, ut vehicula lacus. Duis
                          cursus nisi non neque lacinia, varius mattis est
                          lobortis. Duis malesuada odio nec dui iaculis pretium.
                          Donec ac mi massa. Fusce at lacus erat. Nulla eu orci
                          tortor. Mauris sagittis lacinia malesuada. Phasellus
                          vel odio vitae nisl tincidunt finibus. Integer non
                          sapien in enim mattis mattis.
                        </p>
                      </div>
                      <div class="card-footer text-center">
                        <a href="#" class="btn  btn-info btnpromo ">
                          1199,99 R$ /sem
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="card-group">
                    <div class="card border-info">
                      <img src="./assets/img/Imagens/Sydney.jpg" class="card-img-top img-card" alt="..." />
                      <div class="card-body text-center">
                        <h5 class="card-title">TSydney Austrália</h5>
                        <p class="card-text">
                          This is a wider card with supporting text below as a
                          natural lead-in to additional content. This content is
                          a little bit longer.
                        </p>
                      </div>
                      <div class="card-footer text-center">
                        <a href="#" class="btn  btn-info btnpromo ">
                          899,99 R$ /sem
                        </a>
                      </div>
                    </div>
                    <div class="card border-info">
                      <img src="./assets/img/Imagens/Sydney.jpg" class="card-img-top img-card" alt="..." />
                      <div class="card-body text-center">
                        <h5 class="card-title">Sydney Austrália</h5>
                        <p class="card-text">
                          This card has supporting text below as a natural
                          lead-in to additional content.
                        </p>
                      </div>
                      <div class="card-footer text-center">
                        <a href="#" class="btn  btn-info btnpromo ">
                          899,99 R$ /sem
                        </a>
                      </div>
                    </div>
                    <div class="card border-info">
                      <img src="./assets/img/Imagens/Sydney.jpg" class="card-img-top img-card" alt="..." />
                      <div class="card-body text-center">
                        <h5 class="card-title">Sydney Austrália</h5>
                        <p class="card-text">
                          This is a wider card with supporting text below as a
                          natural lead-in to additional content. This card has
                          even longer content than the first to show that equal
                          height action.
                        </p>
                      </div>
                      <div class="card-footer text-center">
                        <a href="#" class="btn  btn-info btnpromo ">
                          899,99 R$ /sem
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="carousel-item">
                <div class="row">
                  <div class="card-group">
                    <div class="card border-info">
                      <img src="./assets/img/Imagens/Dubai.jpg" class="card-img-top img-card" alt="..." />
                      <div class="card-body text-center">
                        <h5 class="card-title">Dubai</h5>
                        <p class="card-text">
                          This is a wider card with supporting text below as a
                          natural lead-in to additional content. This content is
                          a little bit longer.
                        </p> 
                      </div>
                      <div class="card-footer text-center">
                        <a href="#" class="btn  btn-info btnpromo ">
                          899,99 R$ /sem
                        </a>
                      </div>
                    </div>
                    <div class="card border-info">
                      <img src="./assets/img/Imagens/Dubai.jpg" class="card-img-top img-card" alt="..." />
                      <div class="card-body text-center">
                        <h5 class="card-title">Dubai</h5>
                        <p class="card-text">
                          This card has supporting text below as a natural
                          lead-in to additional content.
                        </p>
                      </div>
                      <div class="card-footer text-center">
                        <a href="#" class="btn  btn-info btnpromo ">
                          899,99 R$ /sem
                        </a>
                      </div>
                    </div>
                    <div class="card border-info">
                      <img src="./assets/img/Imagens/Dubai.jpg" class="card-img-top img-card" alt="..." />
                      <div class="card-body text-center">
                        <h5 class="card-title">Dubai</h5>
                        <p class="card-text">
                          This is a wider card with supporting text below as a
                          natural lead-in to additional content. This card has
                          even longer content than the first to show that equal
                          height action.
                        </p>
                      </div>
                      <div class="card-footer text-center">
                        <a href="#" class="btn  btn-info btnpromo ">
                          899,99 R$ /sem
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- botões  -->
            <div class="botões mt-5">
              <button
                class="carousel-control-prev prevNext"
                type="button"
                data-bs-target="#carouselExample"
                data-bs-slide="prev"
              >
                <span
                  class="carousel-control-prev-icon bg-dark"
                  aria-hidden="true"
                ></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button
                class="carousel-control-next prevNext"
                type="button"
                data-bs-target="#carouselExample"
                data-bs-slide="next"
              >
                <span
                  class="carousel-control-next-icon bg-dark"
                  aria-hidden="true"
                ></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>
          </div>
        </div>
      </main>
       <footer class="bg-dark  text-white text-center mt-1  row">
        Tropicalagencia@exemplo.com
        <br>
        Tel : (00) 0000-0000
        <div class="linhaFooter">
          &copy; Tropical Todos os direitos reservados
        </div>
      </footer>
</body>
 <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
    crossorigin="anonymous"
  ></script>
</html>