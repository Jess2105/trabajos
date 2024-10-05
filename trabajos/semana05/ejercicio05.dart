import 'dart:io';

void main() {
  // Solicitar el tamaño de las matrices
  print("Introduce el tamaño de las matrices (N):");
  int n = int.parse(stdin.readLineSync()!);

  // Inicializar las matrices
  List<List<int>> matrizA = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> matrizB = List.generate(n, (_) => List.filled(n, 0));
  List<List<int>> sumaMatriz = List.generate(n, (_) => List.filled(n, 0));

  // Solicitar elementos de la primera matriz
  print("Introduce los elementos de la primera matriz (A):");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print("Elemento A[$i][$j]:");
      matrizA[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Solicitar elementos de la segunda matriz
  print("Introduce los elementos de la segunda matriz (B):");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print("Elemento B[$i][$j]:");
      matrizB[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Calcular la suma de las matrices
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      sumaMatriz[i][j] = matrizA[i][j] + matrizB[i][j];
    }
  }

  // Mostrar la matriz resultante
  print("La suma de las matrices es:");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write("${sumaMatriz[i][j]} ");
    }
    print(""); // Nueva línea después de cada fila
  }
}
