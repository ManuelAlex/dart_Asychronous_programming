void main(List<String> args) async {
  final parsedName = getNames().asyncExpand((name) => checkCharacters(name));
  await for (final eachStr in parsedName) {
    print(eachStr);
  }
}

//asyn expand
Stream<String> checkCharacters(String fromStr) async* {
  for (var i = 0; i < fromStr.length; i++) {
    await Future.delayed(const Duration(milliseconds: 300));
    yield fromStr[i];
  }
}

Stream<String> getNames() async* {
  await Future.delayed(const Duration(milliseconds: 200));
  yield 'John';
  await Future.delayed(const Duration(milliseconds: 200));
  yield 'Doe';
}
