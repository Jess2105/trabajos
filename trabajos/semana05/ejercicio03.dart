import 'dart:io';

void main() {
  // Solicitar un número al usuario
  print("Introduce un número entero no negativo para calcular su factorial:");
  int? n = int.parse(stdin.readLineSync()!);

  // Validar que el número sea no negativo
  if (n < 0) {
    print("Por favor, introduce un número entero no negativo.");
    return;
  }

  // Inicializar el resultado como BigInt
  BigInt factorial = BigInt.one;

  // Calcular el factorial utilizando un bucle for
  for (int i = 1; i <= n; i++) {
    factorial *= BigInt.from(i); // Convertir i a BigInt y multiplicar
  }

  // Mostrar el resultado
  print("El factorial de $n es: $factorial");
}
