// // Parsear los datos JSON recibidos del backend
// var datos = JSON.parse(datosJson);

// // Inicializar gráficos con los datos recibidos
// const graficoGastos = document.getElementById('graficoGastos');
// new Chart(graficoGastos, {
//     type: 'bar',
//     data: {
//         labels: ['Ingresos', 'Costos de Productos Vendidos (CPV)', 'Gastos operativos', 'Impuestos', 'Ganancia neta'],
//         datasets: [{
//             label: 'Este mes',
//             data: [
//                 datos.ingresoTotalDiario,
//                 datos.CPV,
//                 datos.gastosDeOperacion,
//                 datos.impuestos,
//                 datos.gananciaNeta
//             ],
//             borderWidth: 1,
//             backgroundColor: [
//                 'rgba(0, 0, 139, 0.7)',
//                 'rgba(65, 105, 225, 0.7)',
//                 'rgba(135, 206, 235, 0.7)',
//                 'rgba(173, 216, 230, 0.7)',
//                 'rgba(0, 0, 128, 0.7)'
//             ],
//             borderColor: [
//                 'rgba(255, 99, 132, 0.7)',
//                 'rgba(54, 162, 235, 0.7)',
//                 'rgba(255, 206, 86, 0.7)',
//                 'rgba(75, 192, 192, 0.7)',
//                 'rgba(153, 102, 255, 0.7)'
//             ],
//         }]
//     },
//     options: {
//         responsive: true,
//     }
// });

// const graficoMensual = document.getElementById('graficoMensual');
// new Chart(graficoMensual, {
//     type: 'line',
//     data: {
//         labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio'],
//         datasets: [{
//             label: 'Ganancia Neta',
//             data: [
//                 datos.gananciasEnero,
//                 datos.gananciasFebrero,
//                 datos.gananciasMarzo,
//                 datos.gananciasAbril,
//                 datos.gananciasMayo,
//                 datos.gananciasJunio
//             ],
//             borderWidth: 1,
//             backgroundColor: '#00131D',
//             borderColor: '#00131D',
//             fill: false
//         }]
//     },
//     options: {
//         responsive: true,
//     }
// });
document.addEventListener('DOMContentLoaded', function () {
    var datosJson = document.getElementById('datosJson').value;
    var datos = JSON.parse(datosJson);

    // Inicializar gráfico de gastos
    const graficoGastos = document.getElementById('graficoGastos');
    new Chart(graficoGastos, {
        type: 'bar',
        data: {
            labels: ['Ingresos', 'Costos de Productos Vendidos (CPV)', 'Gastos operativos', 'Impuestos', 'Ganancia neta'],
            datasets: [{
                label: 'Este mes',
                data: [
                    datos.ingresoTotalDiario,
                    datos.CPV,
                    datos.gastosDeOperacion,
                    datos.impuestos,
                    datos.gananciaNeta
                ],
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

    // Inicializar gráfico mensual
    const graficoMensual = document.getElementById('graficoMensual');
    new Chart(graficoMensual, {
        type: 'line',
        data: {
            labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio'],
            datasets: [{
                label: 'Ganancia Neta',
                data: [
                    datos.gananciasEnero,
                    datos.gananciasFebrero,
                    datos.gananciasMarzo,
                    datos.gananciasAbril,
                    datos.gananciasMayo,
                    datos.gananciasJunio
                ],
                borderWidth: 1,
                backgroundColor: '#00131D',
                borderColor: '#00131D',
                fill: false
            }]
        },
        options: {
            responsive: true,
        }
    });
});
 
