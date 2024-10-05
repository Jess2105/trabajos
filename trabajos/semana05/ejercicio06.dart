void main() {
  print("Números perfectos entre 1 y 10000:");

  // Iterar desde 1 hasta 10000
  for (int i = 1; i <= 10000; i++) {
    // Calcular la suma de los divisores propios
    int sumaDivisores = 0;

    for (int j = 1; j < i; j++) {
      if (i % j == 0) {
        sumaDivisores += j; // Agregar el divisor a la suma
      }
    }

    // Verificar si el número es perfecto
    if (sumaDivisores == i) {
      print(i); // Imprimir el número perfecto
    }
  }
}
