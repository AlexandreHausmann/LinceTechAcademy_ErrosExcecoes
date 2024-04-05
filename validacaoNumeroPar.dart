void verificarNumeroPar(int numero) {
  try {
    // Verifica se o número é par
    if (numero % 2 != 0) {
      // Se o número for ímpar, lança uma exceção
      throw Exception('Entrada inválida. Insira apenas números pares.');
    } else {
      // Se o número for par, exibe uma mensagem de confirmação
      print('Entrada correta, você inseriu um número par.');
    }
  } catch (e) {
    // Captura a exceção e imprime a mensagem de erro
    print('Exception: $e');
  }
}

void main() {
  // Exemplo de entrada correta (número par)
  verificarNumeroPar(10);

  // Exemplo de entrada incorreta (número ímpar)
  verificarNumeroPar(7);

  //  Exemplo de entrada
  verificarNumeroPar(1);
  verificarNumeroPar(2);
  verificarNumeroPar(3);
  verificarNumeroPar(4);
  verificarNumeroPar(5);
  verificarNumeroPar(6);
  verificarNumeroPar(7);
  verificarNumeroPar(8);
  verificarNumeroPar(9);
  verificarNumeroPar(0);
}
