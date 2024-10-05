import 'dart:io';

void main() {
  // Solicitar el tamaño de la matriz
  print("Introduce el tamaño de la matriz (n):");
  int n = int.parse(stdin.readLineSync()!);

  // Inicializar la matriz
  List<List<int>> matriz = List.generate(n, (_) => List.filled(n, 0));

  int valor = 1; // Valor inicial para llenar la matriz
  int inicioFila = 0; // Índice de la fila de inicio
  int finFila = n - 1; // Índice de la fila final
  int inicioColumna = 0; // Índice de la columna de inicio
  int finColumna = n - 1; // Índice de la columna final

  // Llenar la matriz en forma espiral
  while (inicioFila <= finFila && inicioColumna <= finColumna) {
    // Llenar la fila superior
    for (int i = inicioColumna; i <= finColumna; i++) {
      matriz[inicioFila][i] = valor++;
    }
    inicioFila++;

    // Llenar la columna derecha
    for (int i = inicioFila; i <= finFila; i++) {
      matriz[i][finColumna] = valor++;
    }
    finColumna--;

    // Llenar la fila inferior si aún hay filas restantes
    if (inicioFila <= finFila) {
      for (int i = finColumna; i >= inicioColumna; i--) {
        matriz[finFila][i] = valor++;
      }
      finFila--;
    }

    // Llenar la columna izquierda si aún hay columnas restantes
    if (inicioColumna <= finColumna) {
      for (int i = finFila; i >= inicioFila; i--) {
        matriz[i][inicioColumna] = valor++;
      }
      inicioColumna++;
    }
  }

  // Mostrar la matriz resultante
  print("Matriz en forma espiral:");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      stdout.write("${matriz[i][j]} ");
    }
    print(""); // Nueva línea después de cada fila
  }
}
