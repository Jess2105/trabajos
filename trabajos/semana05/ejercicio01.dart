import 'dart:io';

// Función para verificar si un número es primo
bool esPrimo(int num) {
  if (num < 2) {
    return false;
  }
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  // Solicitar el primer número
  print("Introduce el primer número:");
  int? num1 = int.parse(stdin.readLineSync()!);

  // Solicitar el segundo número
  print("Introduce el segundo número:");
  int? num2 = int.parse(stdin.readLineSync()!);

  // Validar que num1 sea menor o igual que num2
  if (num1 > num2) {
    print("El primer número debe ser menor o igual que el segundo número.");
    return;
  }

  int sumatoriaPrimos = 0;

  // Bucle para recorrer el rango entre num1 y num2
  for (int i = num1; i <= num2; i++) {
    if (esPrimo(i)) {
      sumatoriaPrimos += i; // Sumar si es primo
    }
  }

  // Mostrar la suma de los números primos
  print("La sumatoria de los números primos entre $num1 y $num2 es: $sumatoriaPrimos");
}
