//yield ---> colher

import 'dart:async';

Stream myStream({
  required int interval,
  int? maxCount,
}) async* {
  int i = 1;
  while (i != maxCount) {
    print('Counting: $i');
    await Future.delayed(Duration(seconds: interval));

    yield i++;
  }

  print('myStream is finished!');
}

void main() async {
  Stream cacauStream = myStream(interval: 1, maxCount: 20).asBroadcastStream();

  StreamSubscription mySubscriber = cacauStream.listen(
    (event) {
      if (event % 2 == 0) {
        print('This number is even(par)!');
      } else {
        print('This number is odd(ímpar)!');
      }
    },
    onError: (e) {
      print('On error happened: $e');
    },
    onDone: () {
      print('mySubscriber is finished!');
    },
  );

  cacauStream.map((event) => 'Subscriber 2 watching: $event').listen(print);

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print('mySubscriber paused!');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print('mySubscriber resumed!');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print('mySubscriber canceled!');

  print('Main is finished!');
}
