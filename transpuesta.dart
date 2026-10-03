List<List<int>> transponerMatriz(List<List<int>> matriz) {
  if (matriz.isEmpty) {
    return [];
  }

  int filas = matriz.length;
  int columnas = matriz[0].length;
  List<List<int>> transpuesta = [];

  for (List<int> fila in matriz) {
    if (fila.length != columnas) {
      throw ArgumentError('Todas las filas deben tener la misma longitud.');
    }
  }

  // Cada columna de la matriz original se convierte en una fila.
  for (int columna = 0; columna < columnas; columna++) {
    List<int> nuevaFila = [];
    for (int fila = 0; fila < filas; fila++) {
      nuevaFila.add(matriz[fila][columna]);
    }
    transpuesta.add(nuevaFila);
  }

  return transpuesta;
}

void main() {
  List<List<int>> matriz = [
    [1, 2, 3],
    [4, 5, 6],
  ];
  print(transponerMatriz(matriz));
}
