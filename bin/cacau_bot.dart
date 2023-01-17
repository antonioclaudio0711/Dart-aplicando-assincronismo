import 'dart:io';

import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String cacauBot = 'CacauBOT:\n';
  var a = true;
  String usuario = '';

  print('-- Iniciando o CacauBOT, aguarde..--');
  await BotClock().clock(seconds: 2);

  print('CacauBOT:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(seconds: 1);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('tchau') ||
        usuario.contains('Tchau') ||
        usuario.contains('adeus') ||
        usuario.contains('Adeus')) {
      a = false;
      print(cacauBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      await BotClock().clock(seconds: 2);
      TimeQuestions(usuario).timeQuestion();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await BotClock().clock(seconds: 2);
      print(
        cacauBot +
            ' Não fui treinado para responder a essa pergunta \n Desculpe :( ',
      );
      print(
        cacauBot +
            ' Você pode fazer outra pergunta ou se despedir (escreva "Tchau"):',
      );
    }
  } while (a);

  print('--Encerrando CacauBOT--');
}
