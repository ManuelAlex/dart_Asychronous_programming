void main(List<String> args) async {
  await for (final name in getNames().absorbErrorsUsingHandleError()) {
    print(name);
  }
}

extension AbsorbError<T> on Stream<T> {
  Stream<T> absorbErrorsUsingHandleError() => handleError((_, __) {});
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Mary';
  yield 'Jane';
  throw 'Out of names';
}
