import 'dart:io';

void main() {
  // Solicitar un número entero al usuario
  print("Introduce un número entero:");
  int? numero = int.parse(stdin.readLineSync()!);

  // Variable para almacenar el número invertido
  int numeroInvertido = 0;

  // Variable para almacenar el número original
  int numeroOriginal = numero.abs(); // Trabajar con el valor absoluto

  // Bucle while para invertir los dígitos
  while (numeroOriginal > 0) {
    // Obtener el último dígito
    int digito = numeroOriginal % 10;

    // Construir el número invertido
    numeroInvertido = (numeroInvertido * 10) + digito;

    // Eliminar el último dígito del número original
    numeroOriginal ~/= 10; // División entera
  }

  // Agregar el signo negativo si el número original era negativo
  if (numero < 0) {
    numeroInvertido = -numeroInvertido;
  }

  // Mostrar el número invertido
  print("El número invertido es: $numeroInvertido");
}
