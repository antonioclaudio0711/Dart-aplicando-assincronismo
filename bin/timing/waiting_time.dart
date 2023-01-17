class BotClock {
  Future clock({required int seconds}) {
    return Future.delayed(
      Duration(seconds: seconds),
    );
  }
}
