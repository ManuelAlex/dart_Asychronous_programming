void main(List<String> args) async {
  final result = await getnames()
      .asyncMap((name) => extractCharacters(name))
      .fold('', (previous, element) {
    final elements = element.join('-');
    return '$previous $elements ';
  });
  print(result);
}

Stream<String> getnames() async* {
  yield 'John';
  yield 'Jane';
  yield 'Mary';
}

Future<List<String>> extractCharacters(String fromStr) async {
  final character = <String>[];
  for (String char in fromStr.split('')) {
    Future.delayed(
      const Duration(
        seconds: 1,
      ), /* () => character.add(char)*/
    );
    character.add(char);
  }
  return character;
}
