import 'dart:io';

void main() {
  stdout.write('Ingresa la cantidad a retirar: ');
  int? cantidad = int.tryParse(stdin.readLineSync() ?? '');

  if (cantidad == null || cantidad <= 0 || cantidad % 10 != 0) {
    print('Error: la cantidad debe ser un entero positivo multiplo de 10.');
    return;
  }

  List<int> billetes = [500, 200, 100, 50, 20, 10];

  // Se toman primero los billetes de mayor valor.
  for (int billete in billetes) {
    int numero = cantidad! ~/ billete;
    cantidad = cantidad % billete;

    if (numero > 0) {
      print('$numero billete(s) de \$$billete');
    }
  }
}
