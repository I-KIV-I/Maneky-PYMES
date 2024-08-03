
let montana = document.getElementById("montana");
let camino = document.getElementById("camino");
let text = document.getElementById("text");
let logo = document.getElementById("logo");

window.addEventListener('scroll', function(){
	var value = window.scrollY;
	var valueManeki = window.scrollY + 100;
	
	montana.style.top = -value * 0.3 + 'px';
	camino.style.top = value * 0.1 + 'px';
	text.style.top = value * 1 + 'px';
	logo.style.top = valueManeki * 1 + 'px';
})


const cartas = document.querySelectorAll('.carta');

cartas.forEach(carta => {
	carta.addEventListener('click', () =>{
		removeActiveClasses()
		carta.classList.add('activa')
	})
})

function removeActiveClasses(){
	cartas.forEach(carta => {
		carta.classList.remove("activa")
	})
}