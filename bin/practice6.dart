void main(List<String> args) async {
  await for (final name in allNames()) {
    print(name);
  }
}

Stream<String> maleNames() async* {
  yield 'John';
  yield 'Paul';
  yield 'Peter';
}

Stream<String> femaleNames() async* {
  yield 'Jane';
  yield 'Susan';
  yield 'Mary';
}

Stream<String> allNames() async* {
  yield* maleNames();
  yield* femaleNames();
}
