import 'dart:io';

//implementar o Timing!

class TimeQuestions {
  String hour = 'Que horas são?';
  String day = 'Que dia é hoje?';
  String year = 'Em que ano estamos?';
  String question;
  DateTime date = DateTime.now();
  String cacauBot = 'CacauBOT:\n';
  bool isThisATimeQuestion = false;

  TimeQuestions(this.question);

  bool isThisTime() {
    //verificar se estamos numa pergunta sobre tempo
    if (question.contains('horas') ||
        question.contains('Horas') ||
        question.contains('dia') ||
        question.contains('Dia') ||
        question.contains('ano') ||
        question.contains('Ano')) {
      isThisATimeQuestion = true;
    }
    return isThisATimeQuestion;
  }

  timeQuestion() {
    if (question == hour) {
      String _botAnswer =
          cacauBot + ' Opa! São: ${date.hour} horas e ${date.minute} minutos!';
      print(_botAnswer);
    } else if (question == day) {
      String _botAnswer = cacauBot + ' Opa! Hoje é dia: ${date.day}';
      print(_botAnswer);
    } else if (question == year) {
      String _botAnswer = cacauBot + ' Opa! Estamos em: ${date.year}';
      print(_botAnswer);
    } else {
      unsure();
    }
  }

  unsure() {
    if (question.contains('horas') || question.contains('Horas')) {
      String _botQuestion =
          cacauBot + ' Não entendi! Você quer saber das horas?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = cacauBot +
            ' Beleza! São: ${date.hour} horas e ${date.minute} minutos!';
        print(_botAnswer);
      } else {
        String _botAnswer = cacauBot + ' Ah! Foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('dia') || question.contains('Dia')) {
      String _botQuestion =
          cacauBot + ' Não entendi! Você quer saber que dia é hoje?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = cacauBot + ' Beleza! Hoje é dia: ${date.day}';
        print(_botAnswer);
      } else {
        String _botAnswer = cacauBot + ' Ah! Foi mal... entendi errado.';
        print(_botAnswer);
      }
    } else if (question.contains('ano') || question.contains('Ano')) {
      String _botQuestion =
          cacauBot + ' Não entendi! Você quer saber em que ano estamos?';
      print(_botQuestion);
      String answer = stdin.readLineSync().toString();
      if (answer.contains('Sim') || answer.contains('sim')) {
        String _botAnswer = cacauBot +
            ' Beleza, estamos no ano de 2077, a pandemia já está terminando... \n '
                'Brincadeirinha! Estamos em : ${date.year}';
        print(_botAnswer);
      } else {
        String _botAnswer = cacauBot + ' Ah! Foi mal... entendi errado.';
        print(_botAnswer);
      }
    }
  }
}
