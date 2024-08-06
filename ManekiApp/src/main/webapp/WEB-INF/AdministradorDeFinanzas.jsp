<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
        <!-- Your existing code for navigation -->
    </div>
    <div class="main">
        <div id="particles-js"></div>
        <div class="topbar">
            <div class="toggle">
                <img src="/img/whiteToggle.svg" alt="toggle">
            </div>
            <div class="search">
                <h1>Finanzas ${pyme.nombre}</h1>
            </div>
            <div class="user">
                <a href="/perfil"><img src="/img/pfp5.jpg" alt="profile pic"></a>
            </div>
            <div>
                <form action="/finanzas/informe/diario/${pyme.id}">
                    <button class="seleccion"><span class="title">Ingresa Formulario</span></button>
                </form>
            </div>
        </div>
        <div class="cardbox">
            <div class="cardcss">
                <div>
                    <div class="numbers">$ ${finanzas.ingresoTotalDiario}</div>
                    <div class="cardName">Ingreso Diario</div>
                </div>
                <div class="iconBx">
                    <img src="/img/coinsCash.svg" alt="Ingreso Diario">
                </div>
            </div>
            <div class="cardcss">
                <div>
                    <div class="numbers">$ ${finanzas.CPV}</div>
                    <div class="cardName">CPV</div>
                </div>
                <div class="iconBx">
                    <img src="/img/coinsCash.svg" alt="CPV">
                </div>
            </div>
            <div class="cardcss">
                <div>
                    <div class="numbers">$ ${finanzas.gastosDeOperacion}</div>
                    <div class="cardName">Gastos Operacionales</div>
                </div>
                <div class="iconBx">
                    <img src="/img/coinsCash.svg" alt="Gastos Operacionales">
                </div>
            </div>
            <div class="cardcss">
                <div>
                    <div class="numbers">$ ${finanzas.impuestos}</div>
                    <div class="cardName">IVA</div>
                </div>
                <div class="iconBx">
                    <img src="/img/money.svg">
                </div>
            </div>
            <div class="cardcss">
                <div>
                    <div class="numbers">$ ${finanzas.gananciaNeta}</div>
                    <div class="cardName">Ganancia</div>
                </div>
                <div class="iconBx">
                    <img src="/img/coinsCash.svg">
                </div>
            </div>
            <div class="cardcss">
                <div class="cardName">
                    <form action="/finanzas/informe/diario/${pyme.id}">
                        <button>Ingresa Informe</button>
                    </form>
                </div>
                <div class="cardName">Ingresa Informe Diario</div>
                <div class="iconBx">
                    <img src="/img/piggy.svg">
                </div>
            </div>
        </div>
        <div class="graphBox">
            <div class="box">
                <canvas id="graficoGastos"></canvas>
            </div>
            <div class="box">
                <canvas id="graficoMensual"></canvas>
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
                            <td>$120.000</td>
                            <td><span class="status regular">Regular</span></td>
                        </tr>
                        <tr>
                            <td>Junio</td>
                            <td>$420.000</td>
                            <td>$120.000</td>
                            <td>$300.000</td>
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
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        var datosJson = '${datos}';
        var datos = JSON.parse(datosJson);
    </script>
    <script src="/js/finanzas.js"></script>
</body>
</html>
