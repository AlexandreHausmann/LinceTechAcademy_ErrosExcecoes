// Interface Arquivo com método abstrato abrir
abstract class Arquivo {
  void abrir();
}

// Classe ArquivoTexto implementando a interface Arquivo
class ArquivoTexto implements Arquivo {
  // Atributo privado
  String _nome;

  // Construtor
  ArquivoTexto(this._nome);

  // Método para simular abertura do arquivo
  @override
  void abrir() {
    try {
      // Simulação da abertura do arquivo
      print('Abrindo arquivo $_nome');
      // Simulação de um possível erro ao abrir o arquivo
      throw Exception('Erro ao abrir o arquivo $_nome');
    } catch (e) {
      // Captura o erro e relança
      throw Exception('Erro ao abrir o arquivo $_nome');
    }
  }
}

void main() {
  try {
    // Simulação de leitura do nome do arquivo
    String nomeArquivo = 'arquivo.txt'; // Substitua por uma entrada do usuário

    // Cria um objeto da classe ArquivoTexto com o nome informado
    ArquivoTexto arquivoTexto = ArquivoTexto(nomeArquivo);

    // Chama o método abrir do arquivo
    arquivoTexto.abrir();
  } catch (e) {
    // Captura a exceção lançada pelo método abrir
    print('Exception: $e');
  } finally {
    // Exibe a mensagem ao final do programa
    print('Fim do programa');
  }
}
