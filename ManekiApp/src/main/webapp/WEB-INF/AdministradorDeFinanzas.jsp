<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/finanzas.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/bootstrap.css">
<meta charset="UTF-8">
<title>Finanzas</title>
</head>
<body>
<div class="barContainer">
	<div class="navigation">
		<ul class="mainUl">
			<li class= "first">
				<a href="/herramientas" class="seleccion">
					<span class="icon"><img src="/img/LogoManeki.png" alt="logo" class="logo"></span>
					<span class="title"><strong>Maneki Pymes</strong></span>
				</a>
			</li>
			<li>
				<a href="/herramientas" class="seleccion">
					<span class="icon"><img src="/img/interface.svg" alt="icono"></span>
					<span class="title">DashBoard</span>
				</a>
			</li>
			<li>
				<a href="/perfil" class="seleccion">
					<span class="icon"><img src="/img/profile.svg" alt="icono profile"></span>
					<span class="title">Perfil</span>
				</a>
			</li>
			<li>
				<div class="seleccion finanzas">
					<div>
						<div class="titleBox">
							<span class="icon"><img src="/img/finances.svg" alt="icono" style="height:75px;"></span>
							<span class="title"  style="height:75px;">Finanzas</span>
						</div>
					<div class= "pymeBox">
						<ul class= "secondUl">
						<c:forEach var="pyme" items="${listaPyme }">
							<li><a href="/finanzas/${pyme.id }" class="pyme">${pyme.nombre }</a></li>
			   			</c:forEach>
			   			</ul>
		   			</div>
		   			</div>
		   		</div>
			</li>
			<li>
				<a href="/noticias" class="seleccion">
					<span class="icon"><img src="/img/news.svg" alt="icono"></span>
					<span class="title">Noticias</span>
				</a>
			</li>
			<li>
				<a href="/foro" class="seleccion">
					<span class="icon"><img src="/img/people.svg" alt="icono"></span>
					<span class="title">Foro</span>
				</a>
			</li>
			<li>
				<a href="/procesar/logout" class="seleccion">
					<span class="icon"><img src="/img/logout.svg" alt="icono"></span>
					<span class="title">Cerrar Sesión</span>
				</a>
			</li>
		</ul>
	</div>
</div>


<div class="main">
<div id="particles-js"></div>
	<div class="topbar">
		<div class="toggle">
			<img src="/img/whiteToggle.svg" alt="toggle">
		</div>
		<div class="search">
			<h1>Finanzas "${pyme.nombre}"</h1>
		</div>
		<div class="user">
			<a href="/perfil"><img src="/img/pfp5.jpg" alt="profile pic"></a>
		</div>
	</div>	


	
	<div class="cardbox">
		<div class="cardcss">
			<div>
				<div class="numbers">$ ${form.ingresoTotalDiario}</div>
				<div class="cardName">Ganancia</div>
			</div>
			<div class="iconBx">
				<img src="/img/coinsCash.svg">
			</div>
		</div>
		<div class="cardcss">
			<div>
				<div class="numbers">$15.504</div>
				<div class="cardName">Gastos</div>
			</div>
			<div class="iconBx">
				<img src="/img/coinsMoney.svg">
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
		<%--<div class="cardcss">
			<div>
				<div class="numbers">$284.000</div>
				<div class="cardName">Margen</div>
			</div>
			<div class="iconBx">
				<img src="/img/piggy.svg">
			</div>
		</div> --%>
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
						<td>Ganancia</td>
						<td>Gastos(IVA)</td>
						<td>Ganancia Neta</td>
						<td>Estado</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Enero</td>
						<td>$420.000</td>
						<td>$120.000</td>
						<td>$300.000</td>
						<td><span class="status bien">Bien!</span></td>
					</tr>
					<tr>
						<td>Febrero</td>
						<td>$120.000</td>
						<td>$120.000</td>
						<td>$150.000</td>
						<td><span class="status regular">Regular</span></td>
					</tr>
					<tr>
						<td>Marzo</td>
						<td>$240.000</td>
						<td>$120.000</td>
						<td>$100.000</td>
						<td><span class="status mal">Mejorable</span></td>
					</tr>
					<tr>
						<td>Abril</td>
						<td>$240.000</td>
						<td>$120.000</td>
						<td>$120.000</td>
						<td><span class="status regular">Regular</span></td>
					</tr>
					<tr>
						<td>Mayo</td>
						<td>$320.000</td>
						<td>$120.000</td>
						<td>$200.000</td>
						<td><span class="status bien">Bien!</span></td>
					</tr>
				</tbody>
			</table>
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
<script src="/js/finanzas.js"></script>
</body>
</html>