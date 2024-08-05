const graficoGastos = document.getElementById('grafico1');

	
  new Chart(graficoGastos, {
    type: 'bar',
    data: {
      labels: ['Ingresos', 'Costos de Productos Vendidos (CPV)', 'Ahorros', 'Gastos operativos', 'impuestos', 'Ganancia neta'],
      datasets: [{
        label: 'Julio',
        data: [20000, 43000, 20000, 120000, 240000,20000],
        borderWidth: 1,
        backgroundColor: [
			'rgba(0, 0, 139, 0.7)',
			'rgba(65, 105, 225, 0.7)',
			'rgba(135, 206, 235, 0.7)',
			'rgba(173, 216, 230, 0.7)',
			'rgba(0, 0, 128, 0.7)'
		],
		borderColor:[
			'rgba(255, 99, 132, 0.7)',
			'rgba(54, 162, 235, 0.7)',
			'rgba(255, 206, 86, 0.7)',
			'rgba(75, 192, 192, 0.7)',
			'rgba(153, 102, 255, 0.7)'
		],
      }]
    },
    options: {
     responsive: true,
     plugins:{
		title:{
			display: true,
			text: 'Finanzas mes anterior',
			padding: {
				top: 10,
				bottom: 30
			},
			font:{
				size: 20
			}
		}
	 }
    }
  });
  
  
  const graficomensual = document.getElementById('grafico2');

  new Chart(graficomensual, {
    type: 'line',
    data: {
      labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio'],
      datasets: [{
        label: 'Ganancias Neta',
        data: [20000, 100000, 80000, 45000, 300000, 157000],
        borderWidth: 1,
        backgroundColor: [
			'#00131D',
			'#00131D',
			'#00131D',
			'#00131D',
			'#00131D',
			'#00131D',
		],
      }]
    },
    options: {
     responsive: true,
      plugins:{
		title:{
			display: true,
			text: 'Historial',
			padding: {
				top: 10,
				bottom: 30
			},
			font:{
				size: 20
			}
		}
	 }
    }
  });
  
  
  
let list = document.querySelectorAll('.mainUl li');

function activeLink(){
	list.forEach((item)=>
	item.classList.remove('hovered'));
	this.classList.add('hovered');
}

list.forEach((item)=>
item.addEventListener('mouseover', activeLink));


let toggle = document.querySelector('.toggle');
let navigation = document.querySelector('.navigation');
let main = document.querySelector('.main');

toggle.onclick = function(){
	navigation.classList.toggle('active');
	main.classList.toggle('active');
}