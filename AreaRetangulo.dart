import 'dart:math';

// Interface Forma com método abstrato calcularArea
abstract class Forma {
  double calcularArea();
}

// Classe Retangulo implementando a interface Forma
class Retangulo implements Forma {
  // Atributos privados
  double _base;
  double _altura;

  // Construtor
  Retangulo(double base, double altura) : 
    _base = base,
    _altura = altura {
    // Verifica se base e altura são válidas
    if (_base <= 0 || _altura <= 0) {
      throw Exception('Dimensões inválidas, informe apenas valores positivos maiores que zero');
    }
  }

  // Método para calcular a área
  @override
  double calcularArea() {
    return _base * _altura;
  }
}

void main() {
  try {
    // Inicializando os valores aleatórios
    Random random = Random();
    double base = random.nextDouble() * 100; // Número aleatório entre 0 e 99
    double altura = random.nextDouble() * 100; // Número aleatório entre 0 e 99

    // Inicializa o retângulo
    Retangulo retangulo = Retangulo(base, altura);

    // Calcula e imprime a área do retângulo
    print('Area do retângulo: ${retangulo.calcularArea().toStringAsFixed(2)}');
  } catch (e) {
    // Captura a exceção e imprime a mensagem de erro
    print('Exception: $e');
  }
}
