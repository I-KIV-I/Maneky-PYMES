<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Espacio De Trabajo</title>
</head>

<body>
    <div>
        <header>
            <div>
                <form action="/procesar/logout"><button>Cerrar Sesion</button></form>
                <form action="/finanzas/${idUsuario}"><button>Finanzas</button></form>
                <form action="/foro">Foro</form>
            </div>
            <div>
            	<form action="/perfil"><button>Info Perfil/PYME</button></form>
            </div>
            <div>
                <img th:src="${user.profileImageUrl}" alt="">
                <h5>Bienvenido,${nombreUsuario}</h5>
            </div>
        </header>

        <article>
            <ul>
	            <li><p>comentarios/chats de foros(investigar)</p></li>
            </ul>
        </article>
        <article>
            <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">

                    <!-- Primera -->
                    <div class="carousel-item active">
                        <img src="/img/empezar.jpg" class="d-block w-100 imgcarrusel" alt="Finanzas">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="concept concept-one">
                                <div class="hover hover-1"></div>
                                <div class="hover hover-2"></div>
                                <div class="hover hover-3"></div>
                                <div class="hover hover-4"></div>
                                <div class="hover hover-5"></div>
                                <div class="hover hover-6"></div>
                                <div class="hover hover-7"></div>
                                <div class="hover hover-8"></div>
                                <div class="hover hover-9"></div>
                                <h1 class="hover-1">Comienza tu Pyme Ahora</h1>
                            </div>
                        </div>
                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
                            <h5 class="raleway">¿Por dónde empiezo?</h5>
                            <p class="raleway">Registrate para poder recibir ayuda gratuita sobre cómo iniciar tu PYME
                            </p>
                        </div>
                    </div>


                    <!-- Segunda -->
                    <div class="carousel-item">
                        <img src="/img/pexels-fauxels-3184418.jpg" class="d-block w-100 imgcarrusel" alt="Foro">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="concept concept-two">
                                <div class="hover">
                                    <h1>Únete</h1>
                                </div>
                                <div class="hover">
                                    <h1></h1>
                                </div>
                                <div class="hover">
                                    <h1>al</h1>
                                </div>
                                <div class="hover">
                                    <h1></h1>
                                </div>
                                <div class="hover">
                                    <h1>Foro</h1>
                                </div>
                                <div class="hover">
                                    <h1></h1>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
                            <h5 class="raleway px-2">¡Comparte y recibe ayuda!</h5>
                            <p class="raleway px-2">Nuestro foro está dedicado para que todos los emprendedores
                                compartan entre si y
                                tengan mejor acceso a ayudas financieras y asesorías de sus propios rubros</p>
                        </div>
                    </div>


                    <!-- Tercera -->
                    <div class="carousel-item">
                        <img src="/img/finanzas3.jpg" class="d-block w-100 imgcarrusel" alt="Empezar pyme">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="concept concept-three">
                                <div class="word">
                                    <div class="hover">
                                        <div></div>
                                        <div></div>
                                        <h1>Controla tus Finanzas</h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
                            <h5 class="raleway px-4">Usa nuestras herramientas de contabilidad</h5>
                            <p class="raleway px-4">Aprende a menajar tu negocio, conocer tus números y recibe
                                consejos sobre cómo llevar tu negocio</p>
                        </div>
                    </div>



                    <!-- Cuarta -->
                    <div class="carousel-item">
                        <img src="/img/ley.jpg" class="d-block w-100 imgcarrusel" alt="Eventos">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="concept concept-four">
                                <h1>Mantente al día</h1>
                            </div>
                        </div>
                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
                            <h5 class="raleway px-4">Recibe las noticias relacionadas a tu rubro</h5>
                            <p class="raleway px-4">Echale un ojo a las nuevas normativas vigentes para tu negocio y
                                mantente siempre actualizado y en vanguardia</p>
                        </div>
                    </div>

                    <!-- Quinta -->
                    <div class="carousel-item">
                        <img src="/img/cursos.jpg" class="d-block w-100 imgcarrusel" alt="Proveedores">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="concept concept-five">
                                <h1 class="word">
                                    <span class="char">E</span>
                                    <span class="char">S</span>
                                    <span class="char">P</span>
                                    <span class="char">E</span>
                                    <span class="char">C</span>
                                    <span class="char">I</span>
                                    <span class="char">A</span>
                                    <span class="char">L</span>
                                    <span class="char">I</span>
                                    <span class="char">Z</span>
                                    <span class="char">A</span>
                                    <span class="char">T</span>
                                    <span class="char">E</span>
                                </h1>
                            </div>
                        </div>
                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
                            <h5 class="raleway px-4">¡Accede a cursos gratuitos!</h5>
                            <p class="raleway px-4">Te ofrecemos una lista de cursos gratuitos que puedes tomar para que
                                aprendas
                                más sobre tu negocio y te especialices en el</p>
                        </div>
                    </div>



                    <!-- Sexta -->
                    <div class="carousel-item">
                        <img src="/img/feria.jpg" class="d-block w-100 imgcarrusel" alt="Proveedores">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="concept concept-six">
                                <h1 class="word">
                                    <span class="char">P</span>
                                    <span class="char">a</span>
                                    <span class="char">r</span>
                                    <span class="char">t</span>
                                    <span class="char">i</span>
                                    <span class="char">c</span>
                                    <span class="char">i</span>
                                    <span class="char">p</span>
                                    <span class="char">a</span>
                                </h1>
                            </div>
                        </div>
                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
                            <h5 class="raleway px-4">Asiste a eventos para pequeños emprendedores</h5>
                            <p class="raleway px-4">Accede a una lista de los eventos que están ocrruiendo en el país
                                que
                                puedan potenciar tu negocio</p>
                        </div>
                    </div>



                    <!-- Septima -->
                    <div class="carousel-item">
                        <img src="/img/proveedores.jpg" class="d-block w-100 imgcarrusel" alt="Cursos">
                        <div class="carousel-caption d-none d-md-block">
                            <div class="concept concept-seven">
                                <h1>Contacta con Proveedores</h1>
                            </div>
                        </div>
                        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50">
                            <h5 class="raleway px-4">Obten una lista de proveedores de tu área</h5>
                            <p class="raleway px-4">Te ofrecemos una lista de los mejores proveedores que trabajan con
                                tu rubro,
                                para que se te sea más fácil competir con tus productos en el mercado</p>
                        </div>
                    </div>



                    <!--Botones Carrusel -->
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
            <!-- fin Carrusel -->
        </article>

    </div>
</body>

</html>