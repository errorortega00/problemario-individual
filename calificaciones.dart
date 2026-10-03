String analizarCalificaciones(List<int> calificaciones) {
  if (calificaciones.isEmpty) {
    return 'No hay calificaciones para analizar.';
  }

  int suma = 0;
  int mayor = calificaciones[0];
  int menor = calificaciones[0];
  int aprobados = 0;
  int reprobados = 0;

  // Un solo bucle obtiene todos los datos del reporte.
  for (int calificacion in calificaciones) {
    if (calificacion < 0 || calificacion > 100) {
      return 'Error: las calificaciones deben estar entre 0 y 100.';
    }

    suma = suma + calificacion;

    if (calificacion > mayor) {
      mayor = calificacion;
    }
    if (calificacion < menor) {
      menor = calificacion;
    }
    if (calificacion >= 60) {
      aprobados = aprobados + 1;
    } else {
      reprobados = reprobados + 1;
    }
  }

  double promedio = suma / calificaciones.length;
  return 'Promedio: ${promedio.toStringAsFixed(2)}\n'
      'Calificacion mas alta: $mayor\n'
      'Calificacion mas baja: $menor\n'
      'Aprobados: $aprobados\n'
      'Reprobados: $reprobados';
}

void main() {
  List<int> calificaciones = [45, 80, 95, 60, 55, 100, 72];
  print(analizarCalificaciones(calificaciones));
}
