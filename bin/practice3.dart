void main(List<String> args) async {
  await for (final number in getNumber()) {
    print(number);
  }
  try {
    await for (final name in getNames()) {
      print(name);
    }
  } catch (e) {
    print(e);
  }
}

//Streams
///  future =>|------1 SEC ------ X |
/// Stream  =>|------1 SEC -------X------1 SEC-------X-------1SEC----X|
Stream<int> getNumber() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Stream<String> getNames() async* {
  Future.delayed(const Duration(seconds: 1));
  yield 'John';
  throw Exception('somethng went wrong');
  // yield 'Doe';// dead code
}
