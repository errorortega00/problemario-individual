void imprimirPatron(int n) {
  // Caso base: detiene las llamadas cuando n llega a cero.
  if (n <= 0) {
    return;
  }

  // En Dart, '*' * n crea una cadena con n asteriscos.
  print('*' * n);
  imprimirPatron(n - 1);
  print('*' * n);
}

void main() {
  imprimirPatron(3);
}
