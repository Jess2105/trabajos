import 'dart:io';

void main() {
  // Solicitar al usuario la base y el exponente
  print("Introduce la base:");
  int base = int.parse(stdin.readLineSync()!);
  
  print("Introduce el exponente:");
  int exponente = int.parse(stdin.readLineSync()!);

  // Calcular la potencia usando multiplicación repetida
  int potencia = 1; // Inicializar la potencia

  // Usar un bucle for para multiplicar la base por sí misma
  for (int i = 0; i < exponente; i++) {
    potencia *= base; // Multiplicación repetida
  }

  // Mostrar el resultado
  print("El resultado de $base elevado a la $exponente es: $potencia");
}
