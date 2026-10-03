bool esPalindromo(String frase) {
  String texto = frase.toLowerCase();
  // Conserva letras y numeros; elimina espacios y puntuacion.
  texto = texto.replaceAll(RegExp(r'[^a-z0-9áéíóúüñ]'), '');

  int izquierda = 0;
  int derecha = texto.length - 1;

  // Compara los extremos y avanza hacia el centro.
  while (izquierda < derecha) {
    if (texto[izquierda] != texto[derecha]) {
      return false;
    }
    izquierda = izquierda + 1;
    derecha = derecha - 1;
  }

  return true;
}

void main() {
  print(esPalindromo('Anita lava la tina.'));
  print(esPalindromo('A ti no, bonita.'));
  print(esPalindromo('Hola mundo'));
}
