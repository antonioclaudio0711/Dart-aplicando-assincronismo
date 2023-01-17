void main() {
  Future myFuture = Future(() {
    print("Going back to the future");
    return 21;
  }).then(
    (value) => print("The value is $value!"),
  );

  Future<int> myFutureFunction() async {
    print("I have a function in the future!");
    await Future.delayed(Duration(seconds: 5));
    throw Exception();
    // return 12;
  }

  myFutureFunction()
      .then((value) => print("Mý function value is $value!"))
      .onError((error, stackTrace) => print("An error occurred: $error"))
      .whenComplete(() => print("myFutureFunction is over!"));

  Future<int> myFutureErrorFunction({
    required int a,
    required int b,
  }) async {
    try {
      if (a > b) {
        throw Exception;
      } else {
        print("I have a functional function!");
        await Future.delayed(Duration(seconds: 5));
        return 41;
      }
    } catch (e) {
      print("An error occurred: $e");
      return 42;
    } finally {
      print("myFutureErrorFunction is over!");
    }
  }

  myFutureErrorFunction(a: 5, b: 2); //retorna um erro por a > b;
  myFutureErrorFunction(a: 1, b: 5).then(
    (value) => print("The value is $value!"),
  ); //retorna sucesso por b > a;

  print("Done with main!");
}
