<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/home.css">
<link rel="stylesheet" href="/css/finanzas.css">
<link rel="stylesheet" href="/css/style.css">
<meta charset="UTF-8">
<title>Finanzas</title>
</head>
<body>
<<<<<<< HEAD
		<header>
            <div>
                <form action="/procesar/logout"><button>Cerrar Sesion</button></form>
                <form action="/finanzas/${idUsuario}"><button>Finanzas</button></form>
            </div>
            <div>
            	<form action="/perfil"><button>Info Perfil/PYME</button></form>
            </div>
            <div>
                <img th:src="${usuario.perfilImagen}" alt="imagen_perfil">
                <h5>Bienvenido,${nombreUsuario}</h5>
            </div>
        </header>
        <article>
            <section>
                <ul>
                    <c:forEach var="informes" items="${informes}">
                        <li><div><a href="/finanzas/pyme/${pyme.id}"></a>${informes}</div></li>
                    </c:forEach>
                </ul>
            </section>
        </article>
=======
<div class="main">
	<div id="particles-js"></div>
	

<!-- navbar -->
  <nav class="navbar navbar-expand-lg navbbarback" 
  data-bs-theme="dark">
    <div class="container">
      <a class="navbar-brand d-flex align-items-center mx-auto" href="/maneki_pyme/inicio">
	      <img src="/img/logoManeki.png" alt="Logo" width="50" height="50" 
	      class="d-inline-block align-text-center iconmaneki"> 
	      <span class="ms-4 fs-2 raleway">Maneki Pymes</span>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
        <form action="/procesar/logout">
          <button class="btn btn-secondary ms-5 p-2 raleway" aria-current="page">Cerrar Sesión</button>
          </form>
        </li>
      </ul>
    </div>
    </div>
  </nav>
<!-- fin navbar -->
	
	<!-- barra perfil y titulo -->
	<div class="topbar">
		<div class="title">
			<h1>Hola username, ¿quieres saber tus numeros? </h1>
		</div>
		<div class="user">
			<img src="/img/LogoManeki.png">
		</div>
	</div>
	
	<div class="cardbox">
		<div class="cardcss">
			<div>
				<div class="numbers">$105.504</div>
				<div class="cardName">Gastos</div>
			</div>
			<div class="iconBx">
				<img src="/img/coinsCash.svg">
			</div>
		</div>
		<div class="cardcss">
			<div>
				<div class="numbers">$32.988</div>
				<div class="cardName">IVA</div>
			</div>
			<div class="iconBx">
				<img src="/img/money.svg">
			</div>
		</div>
		<div class="cardcss">
			<div>
				<div class="numbers">$284.000</div>
				<div class="cardName">Margen</div>
			</div>
			<div class="iconBx">
				<img src="/img/piggy.svg">
			</div>
		</div>
		<div class="cardcss">
			<div>
				<div class="numbers">$73.842</div>
				<div class="cardName">Ganancia</div>
			</div>
			<div class="iconBx">
				<img src="/img/coinsMoney.svg">
			</div>
		</div>
	</div>
	
	<div class="graphBox">
		<div class="box">
			<canvas id="grafico1"></canvas>
		</div>
		<div class="box">
			<canvas id="grafico2"></canvas>
		</div>
	</div>
	
	
	<div class="details">
		<div class="recentOrders">
			<div class="cardHeader">
				<h2>Historial Finanzas</h2>
				<a href="#" class="viewAll">View All</a>
			</div>
			<table>
				<thead>
					<tr>
						<td>Mes</td>
						<td>Gastos</td>
						<td>Ganancias</td>
						<td>Estado</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Enero</td>
						<td>$120.000</td>
						<td>$300.000</td>
						<td><span class="status bien">Bien!</span></td>
					</tr>
					<tr>
						<td>Febrero</td>
						<td>$120.000</td>
						<td>$150.000</td>
						<td><span class="status regular">Regular</span></td>
					</tr>
					<tr>
						<td>Marzo</td>
						<td>$120.000</td>
						<td>$100.000</td>
						<td><span class="status mal">Mejorable</span></td>
					</tr>
					<tr>
						<td>Abril</td>
						<td>$120.000</td>
						<td>$120.000</td>
						<td><span class="status regular">Regular</span></td>
					</tr>
					<tr>
						<td>Mayo</td>
						<td>$120.000</td>
						<td>$200.000</td>
						<td><span class="status bien">Bien!</span></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
            <section>
					<ul>
						<c:forEach var="informes" items="${informes}">
							<li><div><a href="/finanzas/pyme/${pyme.id}"></a>${informes}</div></li>
						</c:forEach>
					</ul>
            </section>
        </div>
		<div class="recentCustomers">
			<div class="cardHeader">
				<h2>Consejos</h2>
			</div>
			<table>
					<tr>
						<td width="60px">
							<div class="imgBx">
								<img src="/img/LogoManeki.png">
							</div>
						</td>
						<td>
							<h4>
								Cuidado
								<span>Parece que tus ahorros son bajos, recuerda no gastar demasiado</span>
							</h4>
						</td>
					</tr>
					<tr>
						<td width="60px">
							<div class="imgBx">
								<img src="/img/LogoManeki.png">
							</div>
						</td>
						<td>
							<h4>
								Ahorra
								<span>Manten siempre un colchon de dinero ahorrado ante cualquier cosa</span>
							</h4>
						</td>
					</tr>
					<tr>
						<td width="60px">
							<div class="imgBx">
								<img src="/img/LogoManeki.png">
							</div>
						</td>
						<td>
							<h4>
								Cuidado
								<span>No es momento de expandirse por si lo estabas pensando</span>
							</h4>
						</td>
					</tr>
					<tr>
						<td width="60px">
							<div class="imgBx">
								<img src="/img/LogoManeki.png">
							</div>
						</td>
						<td>
							<h4>
							Mantente informado
								<span>¿Ya revisaste las ultimas noticias?</span>
							</h4>
						</td>
					</tr>
				</table>
			</div>
		</div>
		
		
	</div>
	



<script src="/particles/particles.js"></script>
<script src="/particles/data/app.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>       
<script src="/js/bootstrap.bundle.js"></script>
<script src="/js/finanzas.js"></script>
>>>>>>> d9c7414f54562a6c49e3f73b3567dea862592d26
</body>
</html>