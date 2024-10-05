import 'dart:io';

void main() {
  // Solicitar el número de términos al usuario
  print("Introduce el número de términos para la secuencia de Fibonacci:");
  int? n = int.parse(stdin.readLineSync()!);

  // Validar que el número ingresado sea positivo
  if (n <= 0) {
    print("Por favor, introduce un número positivo.");
    return;
  }

  // Variables para los dos primeros números de la secuencia
  int a = 0, b = 1;

  // Imprimir la secuencia de Fibonacci hasta n términos
  print("La secuencia de Fibonacci con $n términos es:");

  for (int i = 1; i <= n; i++) {
    print(a); // Imprimir el valor actual de la secuencia

    // Calcular el siguiente número en la secuencia
    int siguiente = a + b;
    a = b; // Actualizar el valor de a
    b = siguiente; // Actualizar el valor de b
  }
}
