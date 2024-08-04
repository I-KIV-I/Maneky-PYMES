<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/Style.css">
<link rel="stylesheet" href="/css/home2.css">
<title>Maneky Pymes</title>
</head>
<body>

<section>
<div id="particles-js"></div>
	<img src="/img/LogoManeki.png" id="logo" alt="logo">
	<img src="/img/mountain.png" id="montana" alt="montana">
	<img src="/img/road.png" id="camino" alt="camino">
	<h2 id="text">Maneki Pymes</h2>
</section>


<div class="base">
	<header class="header">
		<div>
			<h1 class="titulo">Comienza tu viaje</h1>
			<h3 class="subtitulo">Comienza tu Pyme desde cero</h3>
		</div>

		<form action="/login"">
			<button type="submit" class="button">Ingresar</button>
		</form>

	</header>
	
	<div class="tituloBox">
		<h3>Servicios</h3>
	</div>
	
	
	<div class="tarjetaBox">
		<div class="tarjeta">
			<div class="header">
				<img src="/img/loan.svg" alt="icono">
			</div>
			<div class="content">
				<h3>Leyes</h3>
				<p>Conoce todos los trámites necesarios para iniciar tu Pyme y
				mantente actualizado con todos los cambios en leyes asociadas a tu negocio</p>
			</div>
		</div>
		<div class="tarjeta">
			<div class="header">
				<img src="/img/deposit.svg" alt="icono">
			</div>
			<div class="content">
				<h3>Finanzas</h3>
				<p>Mantente al día con tus finanzas y recibe consejos sobre com prosprear y potenciar tu 
				PYME. Además conoce cómo vas en cuanto a números según tus registros de ventas</p>
			</div>
		</div>
		<div class="tarjeta">
			<div class="header">
				<img src="/img/message.svg" alt="icono">
			</div>
			<div class="content">
				<h3>Foro</h3>
				<p>Únete al foro de más de mil emprendedores que como tu se enfrentan a desafios a diario,
				¡juntos se hace la fuerza! </p>
			</div>
		</div>
	</div>
	
	
	<div class="cartasBody">
	<div style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%; top: 0; left:0;"><path d="M0.00,49.98 C149.99,150.00 271.49,-49.98 500.00,49.98 L500.00,0.00 L0.00,0.00 Z" style="stroke: none; fill: #00131D;"></path></svg></div>
	
	
	<div class="tituloBox white">
		<h3>¿Por qué elegirnos?</h3>
	</div>
	
	
	<div class="cartas">
		<div class="carta activa" style="--bg: url(/img/empezar.jpg)" id="carta">
			<div class="sombra"></div>
			<div class="label">
				<div class="icon">
					<img src="/img/idea.svg" alt="icono">	
				</div>
				<div class="info">
					<h2 class="title">Empieza ahora</h2>
					<p>Te damos todos los pasos que necesitas para formar tu PYME</p>
				</div>
			</div>
		</div>
		
		<div class="carta" Style="--bg: url(/img/foro.jpg)" id="carta">
			<div class="sombra"></div>
			<div class="label">
				<div class="icon">
					<img src="/img/idea.svg" alt="icono">			
				</div>
				<div class="info">
					<h2 class="title">Pregunta en el foro</h2>
					<p>Resuelve dudas y participa en conversaciones relacionadas a tu rubro</p>
				</div>
			</div>
		</div>
		
		<div class="carta" Style="--bg: url(/img/feria.jpg)" id="carta">
			<div class="sombra"></div>
			<div class="label">
				<div class="icon">
					<img src="/img/idea.svg" alt="icono">			
				</div>
				<div class="info">
					<h2 class="title">Participa</h2>
					<p>Participa en eventos para promocionar tu Pyme</p>
				</div>
			</div>
		</div>
		
		<div class="carta" Style="--bg: url(/img/finanzas.jpg)" id="carta">
			<div class="sombra"></div>
			<div class="label">
				<div class="icon">
					<img src="/img/idea.svg" alt="icono">			
				</div>
				<div class="info">
					<h2 class="title">Organizate</h2>
					<p>Utiliza nuestras herramietas para conocer tus números</p>
				</div>
			</div>
		</div>
		
		
		<div class="carta" Style="--bg: url(/img/cursos.jpg)" id="carta">
			<div class="sombra"></div>
			<div class="label">
				<div class="icon">
					<img src="/img/idea.svg" alt="icono">			
				</div>
				<div class="info">
					<h2 class="title">Especializate</h2>
					<p>Accede a todos los cursos disponibles para ti y conoce más tu negocio</p>
				</div>
			</div>
		</div>
		
		
		<div class="carta" Style="--bg: url(/img/ley.jpg)" id="carta">
			<div class="sombra"></div>
			<div class="label">
				<div class="icon">
					<img src="/img/idea.svg" alt="icono">			
				</div>
				<div class="info">
					<h2 class="title">Infórmate</h2>
					<p>Mantente al dia con las noticias relevantes en tu área</p>
				</div>
			</div>
		</div>
		
		
		<div class="carta" Style="--bg: url(/img/proveedores.jpg)" id="carta">
			<div class="sombra"></div>
			<div class="label">
				<div class="icon">
					<img src="/img/idea.svg" alt="icono">			
				</div>
				<div class="info">
					<h2 class="title">Contacta</h2>
					<p>Ten a tu disposición una lista de los proveedores que te pueden surtir</p>
				</div>
			</div>
		</div>
		</div>
	</div>
	<div class="preguntasBody">
		<div style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%; top: 0; left:0;"><path d="M0.00,49.98 C149.99,150.00 271.49,-49.98 500.00,49.98 L500.00,0.00 L0.00,0.00 Z" style="stroke: none; fill: #fff;"></path></svg></div>
		
		<div class="tituloBox">
			<h3>Preguntas Frecuentes</h3>
		</div>
		
		<div class="tarjetaBox">
			<div class="tarjeta2">
				<div class="colorBar"></div>
				<div class="content">
					<h3>¿Es gratis?</h3>
					<p>Todos nuestros servicios son gratis, por ahora solo 
					necesitas tener una Pyme para acceder a ellas, ¿te ayudamos 
					a armar una? ¡Registrate!</p>
				</div>
			</div>
			<div class="tarjeta2">
				<div class="colorBar"></div>
				<div class="content">
					<h3>¿Debo saber de negocios?</h3>
					<p>Por supuesto que no es un requisito, nuestra plataforma está hecha para ayudarte
					a entender tu negocio y a extender una red de apoyo para que vayas formandote en el
					camino</p>
				</div>
			</div>
			<div class="tarjeta2">
				<div class="colorBar"></div>
				<div class="content">
					<h3>¿Como puedo iniciar mi PYME?</h3>
					<p>Tan solo debes registrarte con nosotros, indicarnos qué PYME tienes en mente y
					nosotros te decimos el resto</p>
				</div>
			</div>
			<div class="tarjeta2">
				<div class="colorBar"></div>
				<div class="content">
					<h3>¿Dónde hago los trámites que necesito hacer?</h3>
					<p>Pues hay muchos trámites para distintos emprendimientos, algunos los puedes hacer
					online y otros en instituciones públicas. Primero necesitas saber en qué 
					áreas trabaja tu PYME, inscribete con nosotros y te daremos toda la info que necesitas saber
					y dónde realizarla</p>
				</div>
			</div>
			<div class="tarjeta2">
				<div class="colorBar"></div>
				<div class="content">
					<h3>¿Cómo accedo al foro?</h3>
					<p>Primero tienes que iniciar sesión e inscribir una PYME y ¡listo! Podrás
					acceder a todas las conversaciones que te interesen</p>
				</div>
			</div>
			<div class="tarjeta2">
				<div class="colorBar"></div>
				<div class="content">
					<h3>¿Cómo registro mis finanzas?</h3>
					<p>En el panel de Finanzas de tu empresa podrás acceder a un formulario para ingresar
					tus ventas, estas se guardarán y te mostrarán tu progreso con respecto a los últimos
					meses</p>
				</div>
			</div>
		</div>
	
	</div>


<!-- Footer -->
<div class="footer">
	<ul class="nav">
		<li class="nav-item">
    		<a class="nav-link" aria-current="page" href="/equipo">Contáctanos</a>
  		</li>
  		<li class="nav-item">
    		<a class="nav-link" href="#">Saber más</a>
  		</li>
  		<li class="nav-item">
    		<a class="nav-link" href="#">Donaciones</a>
  		</li>
	</ul>
</div>		



</div>
<script src="/js/home.js"></script>
<script src="/particles/particles.js"></script>
<script src="/particles/data/app.js"></script>	
</body>
</html>