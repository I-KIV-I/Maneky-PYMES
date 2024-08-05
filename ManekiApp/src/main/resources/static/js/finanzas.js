// Obtener el elemento del DOM donde se renderizará el gráfico
const graficoGastos = document.getElementById('graficoGastos');

// Parsear los datos JSON
var datosJson = '${datos}';
var datos = JSON.parse(datosJson); 

// Extraer las variables necesarias
var ingresoTotalDiario = datos.ingresoTotalDiario;
var CPV = datos.CPV;
var gastosDeOperacion = datos.gastosDeOperacion;
var impuestos = datos.impuestos;
var gananciaNeta = datos.gananciaNeta;

// Crear el gráfico de barras
new Chart(graficoGastos, {
  type: 'bar',
  data: {
    labels: ['Ingresos', 'Costos de Productos Vendidos (CPV)', 'Gastos operativos', 'Impuestos', 'Ganancia neta'],
    datasets: [{
      label: 'Este mes',
      data: [ingresoTotalDiario, CPV, gastosDeOperacion, impuestos, gananciaNeta],
      borderWidth: 1,
      backgroundColor: [
        'rgba(0, 0, 139, 0.7)',
        'rgba(65, 105, 225, 0.7)',
        'rgba(135, 206, 235, 0.7)',
        'rgba(173, 216, 230, 0.7)',
        'rgba(0, 0, 128, 0.7)'
      ],
      borderColor: [
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

// Obtener el elemento del DOM donde se renderizará el gráfico mensual
const graficomensual = document.getElementById('graficomensual');

// Crear el gráfico de líneas
new Chart(graficomensual, {
  type: 'line',
  data: {
    labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio'],
    datasets: [{
      label: 'Ganancia Neta',
      data: [datos.gananciasEnero, datos.gananciasFebrero, datos.gananciasMarzo, datos.gananciasAbril, datos.gananciasMayo, datos.gananciasJunio],
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
