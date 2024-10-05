import 'dart:io';

void main() {
  // Solicitar al usuario la base y el exponente
  print("Introduce la base:");
  int base = int.parse(stdin.readLineSync()!);
  
  print("Introduce el exponente:");
  int exponente = int.parse(stdin.readLineSync()!);

  // Calcular la potencia usando multiplicación repetida
  int potencia = 1; // Inicializar la potencia
  int contador = 0; // Contador para el bucle while

  // Usar un bucle while para multiplicar la base por sí misma
  while (contador < exponente) {
    potencia *= base; // Multiplicación repetida
    contador++; // Incrementar el contador
  }

  // Mostrar el resultado
  print("El resultado de $base elevado a la $exponente es: $potencia");
}
