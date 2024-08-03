const grafico1 = document.getElementById('grafico1');

  new Chart(grafico1, {
    type: 'bar',
    data: {
      labels: ['IVA', 'Reinvercion', 'Ahorros', 'Gastos', 'Ganancia'],
      datasets: [{
        label: 'Este mes',
        data: [32000, 43000, 20000, 120000, 240000],
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
    }
  });
  
  
  const grafico2 = document.getElementById('grafico2');

  new Chart(grafico2, {
    type: 'line',
    data: {
      labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio'],
      datasets: [{
        label: 'Ganancias Totales',
        data: [120000, 100000, 80000, 45000, 300000, 157000],
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
    }
  });