class GoodManers {
  String question;
  bool isThisGoodManners = false;
  String cacauBOT = 'CacauBOT:\n';

  GoodManers({required this.question});

  bool isThisManners() {
    if (question.contains('oi') ||
        question.contains('Oi') ||
        question.contains('olá') ||
        question.contains('Olá') ||
        question.contains('ola') ||
        question.contains('Ola') ||
        question.contains('obrigado') ||
        question.contains('Obrigado') ||
        question.contains('obrigada') ||
        question.contains('Obrigada') ||
        question.contains('de nada') ||
        question.contains('De nada') ||
        question.contains('bom') ||
        question.contains('Bom') ||
        question.contains('boa') ||
        question.contains('Boa') ||
        question.contains('tarde') ||
        question.contains('noite') ||
        question.contains('dia')) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners() {
    if (question.contains('bom dia') || question.contains('Bom dia')) {
      print(cacauBOT + 'Opa! Bom dia flor do dia!');
    } else if (question.contains('boa tarde') ||
        question.contains('Boa tarde')) {
      print(cacauBOT + 'Opa! Boa tarde!');
    } else if (question.contains('boa noite') ||
        question.contains('Boa noite')) {
      print(cacauBOT + 'Uma bela noite, não é mesmo?');
    } else if (question.contains('oi') ||
        question.contains('Oi') ||
        question.contains('olá') ||
        question.contains('Olá') ||
        question.contains('ola') ||
        question.contains('Ola')) {
      print(cacauBOT + 'Muito prazer!');
    } else if (question.contains('obrigado') ||
        question.contains('Obrigado') ||
        question.contains('obrigada') ||
        question.contains('Obrigada')) {
      print(cacauBOT + 'Que isso, não precisa me agradecer!');
    }
  }
}
