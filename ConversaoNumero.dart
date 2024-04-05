void converterParaInteiro(String entrada) {
  try {
    // Tenta converter a entrada para um número inteiro
    int numero = int.parse(entrada);
    
    // Se a conversão for bem-sucedida, imprime o número
    print('Número digitado: $numero');
  } catch (e) {
    // Se ocorrer um erro na conversão, imprime uma mensagem de erro
    print('Entrada inválida. Insira apenas números inteiros.');
  }
}

void main() {
  // Exemplo de entrada bem sucedida
  converterParaInteiro('9999');

  // Exemplo de entrada com erro
  converterParaInteiro('abc');
}
