<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Sobre - Tropical</title>
<link rel="stylesheet" href="./assets/css/style.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous" />
<link rel="shortcut icon" href="./assets/img/Imagens/icone.png" type="image/x-icon" />
</head>
<body class="contato">
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
      <div class="container-fluid">
        <div class=" bg-secondary text-black text-center">
          <h1 class=" text-center ">Nosso propósito:</h1>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit.
          Nulla dolor ex, posuere nec lacus vitae, cursus egestas ex. Pellentesque sit amet sapien in erat tincidunt
          auctor a at odio. Cras quis viverra nulla.

        </div>
        <div class="text-dark text-center">Nosso manifesto:</div>
        <div class="container">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at odio ultricies, pulvinar enim id,
          vestibulum arcu. Curabitur dignissim tincidunt odio, eget maximus nunc egestas eu. Sed id justo neque. Quisque
          pretium feugiat lorem vel ullamcorper. Ut in dui ut sem tincidunt fringilla. Donec tortor sem, sodales nec
          finibus nec, tristique nec ligula. Ut purus velit, blandit eu viverra ut, porta eu neque. Phasellus at
          dignissim enim, vel rhoncus urna. Donec dapibus ex a mi vulputate fringilla. Sed malesuada dignissim enim quis
          egestas. Nam congue venenatis ex, nec aliquam arcu porta vel. Nulla dolor ex, posuere nec lacus vitae, cursus
          egestas ex. Pellentesque sit amet sapien in erat tincidunt auctor a at odio. Cras quis viverra nulla. <br>
          Nunc ultrices ac elit eget sodales. Sed pretium tempus mi ut luctus. Suspendisse magna metus, pretium vel
          hendrerit a, pretium a odio. Sed euismod suscipit nulla scelerisque egestas. Nam efficitur posuere molestie.
          Suspendisse vestibulum laoreet porttitor. Ut et massa ligula. Etiam quam nibh, tristique at auctor eu,
          fermentum quis augue. Quisque suscipit purus in luctus tempor. Sed aliquam risus ante, ut dictum risus posuere
          vel.
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at odio ultricies, pulvinar enim id,
          vestibulum arcu. Curabitur dignissim tincidunt odio, eget maximus nunc egestas eu. Sed id justo neque. Quisque
          pretium feugiat lorem vel ullamcorper. Ut in dui ut sem tincidunt fringilla. Donec tortor sem, sodales nec
          finibus nec, tristique nec ligula. Ut purus velit, blandit eu viverra ut, porta eu neque. Phasellus at
          dignissim enim, vel rhoncus urna. Donec dapibus ex a mi vulputate fringilla. Sed malesuada dignissim enim quis
          egestas. Nam congue venenatis ex, nec aliquam arcu porta vel. Nulla dolor ex, posuere nec lacus vitae, cursus
          egestas ex. Pellentesque sit amet sapien in erat tincidunt auctor a at odio. Cras quis viverra nulla. <br>
          Nunc ultrices ac elit eget sodales. Sed pretium tempus mi ut luctus. Suspendisse magna metus, pretium vel
          hendrerit a, pretium a odio. Sed euismod suscipit nulla scelerisque egestas. Nam efficitur posuere molestie.
          Suspendisse vestibulum laoreet porttitor. Ut et massa ligula. Etiam quam nibh, tristique at auctor eu,
          fermentum quis augue. Quisque suscipit purus in luctus tempor. Sed aliquam risus ante, ut dictum risus posuere
          vel.
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur at odio ultricies, pulvinar enim id,
          vestibulum arcu. Curabitur dignissim tincidunt odio, eget maximus nunc egestas eu. Sed id justo neque. Quisque
          pretium feugiat lorem vel ullamcorper. Ut in dui ut sem tincidunt fringilla. Donec tortor sem, sodales nec
          finibus nec, tristique nec ligula. Ut purus velit, blandit eu viverra ut, porta eu neque. Phasellus at
          dignissim enim, vel rhoncus urna. Donec dapibus ex a mi vulputate fringilla. Sed malesuada dignissim enim quis
          egestas. Nam congue venenatis ex, nec aliquam arcu porta vel. Nulla dolor ex, posuere nec lacus vitae, cursus
          egestas ex. Pellentesque sit amet sapien in erat tincidunt auctor a at odio. Cras quis viverra nulla. <br>
          Nunc ultrices ac elit eget sodales. Sed pretium tempus mi ut luctus. Suspendisse magna metus, pretium vel
          hendrerit a, pretium a odio. Sed euismod suscipit nulla scelerisque egestas. Nam efficitur posuere molestie.
          Suspendisse vestibulum laoreet porttitor. Ut et massa ligula. Etiam quam nibh, tristique at auctor eu,
          fermentum quis augue. Quisque suscipit purus in luctus tempor. Sed aliquam risus ante, ut dictum risus posuere
          vel.
        </div>
      </div>
    </main>
    <footer class="bg-dark  text-white text-center mt-1  row">
		Tropicalagencia@exemplo.com <br> Tel : (00) 0000-0000
		<div class="linhaFooter">&copy; Tropical Todos os direitos
			reservados</div>
	</footer>
</body>
</html>