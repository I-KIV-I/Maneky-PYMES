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
<meta charset="UTF-8">
<title>Finanzas</title>
</head>
<body>

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

<div class="main">
	<div class="topbar">
		<div class="toggle">
			<ion-icon name="menu-outline"></ion-icon>
		</div>
		<div class="search">
			<label>
				<input type="text" placeholder="search here">
				<ion-icon name="search-outline"></ion-icon>
			</label>
		</div>
		<div class="user">
			<img src="/img/LogoManeki.png">
		</div>
	</div>
	
	<div class="cardbox">
		<div class="card">
			<div>
				<div class="numbers">1,504</div>
				<div class="cardName">Daily Views</div>
			</div>
			<div class="iconBx">
				icon
			</div>
		</div>
		<div class="card">
			<div>
				<div class="numbers">88</div>
				<div class="cardName">Sales</div>
			</div>
			<div class="iconBx">
				icon
			</div>
		</div>
		<div class="card">
			<div>
				<div class="numbers">284</div>
				<div class="cardName">Comments</div>
			</div>
			<div class="iconBx">
				icon
			</div>
		</div>
		<div class="card">
			<div>
				<div class="numbers">$7.842</div>
				<div class="cardName">Earning</div>
			</div>
			<div class="iconBx">
				icon
			</div>
		</div>
	</div>
	
</div>


       
<script src="/js/bootstrap.bundle.js"></script>
</body>
</html>