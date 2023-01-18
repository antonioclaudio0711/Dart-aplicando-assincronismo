void main() {
  Future<int> communication({bool error = false}) async {
    try {
      if (!error) {
        print('João:\n Bom dia, grupo!');
        await Future.delayed(Duration(seconds: 5));
        print('Mariana:\n Bom dia! Tudo bem?');
        await Future.delayed(Duration(seconds: 5));
        print('João:\n Suave, e vc?');
        await Future.delayed(Duration(seconds: 5));
        print('Mariana:\n Certinho!');
        await Future.delayed(Duration(seconds: 5));

        return 12;
      } else {
        throw Exception;
      }
    } catch (e) {
      print('Um erro ocorreu: $e');
      return 11;
    } finally {
      print('A conversa entre João e Mariana foi encerrada!');
    }
  }

  communication(error: true);
  print('\n\nUma nova tentiva de comunicação foi iniciada!');
  communication().then((value) => print('Código $value ---> SUCESSO'));
}
