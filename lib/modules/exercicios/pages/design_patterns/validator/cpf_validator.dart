class CpfValidator {
  String? call(String? cpf) {
    if ((cpf ?? '').replaceAll(RegExp(r'\D'), '').length == 11 &&
        _cpfValido(cpf: cpf ?? '')) {
      return null;
    } else {
      return "CPF inválido";
    }
  }

  bool _cpfValido({required String cpf}) {
    final String semMascara = cpf.replaceAll(RegExp(r'\D'), '');

    int somaDigito = 0;
    for (int i = 10; i > 1; i--) {
      somaDigito += (int.parse(semMascara[10 - i]) * i);
    }
    final int validacaoDecimo =
        (somaDigito * 10) % 11 == 10 ? 0 : (somaDigito * 10) % 11;

    if (validacaoDecimo != int.parse(semMascara[9])) {
      return false;
    }

    somaDigito = 0;
    for (int i = 11; i > 1; i--) {
      somaDigito += int.parse(semMascara[11 - i]);
    }

    final int validacaoDecimoPrimeiro =
        (somaDigito * 10) % 11 == 10 ? 0 : (somaDigito * 10) % 11;

    if (validacaoDecimoPrimeiro != int.parse(semMascara[10])) {
      return false;
    }
    return true;
  }
}
