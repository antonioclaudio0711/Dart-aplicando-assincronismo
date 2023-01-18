import 'dart:async';
import 'dart:io';

import 'questions/good_manners.dart';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String cacauBot = 'CacauBOT:\n';
  var a = true;
  String usuario = '';
  Stream myStream = BotClock().cacauBotStream(interval: 2, maxCount: 10);
  StreamSubscription mySubscriber = myStream.listen(
    (event) {
      print("               CacauBOT está ativo há $event segundos");
    },
    onDone: () {
      print("CacauBOT está finalizando seu trabalho. Faça a última pergunta!");
      a = false;
    },
  );

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
    } else if (GoodManers(question: usuario).isThisManners()) {
      await BotClock().clock(seconds: 2);
      GoodManers(question: usuario).goodManners();
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
