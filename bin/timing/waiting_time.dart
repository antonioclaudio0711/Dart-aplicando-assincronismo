class BotClock {
  Future clock({required int seconds}) {
    return Future.delayed(
      Duration(seconds: seconds),
    );
  }

  Stream cacauBotStream({required int interval, int? maxCount}) async* {
    int i = 1;

    while (i != maxCount) {
      await Future.delayed(Duration(seconds: interval));

      yield i++;
    }

    print('cacauBotStream terminou!');
  }
}
