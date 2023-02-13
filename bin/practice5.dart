Future<void> main(List<String> args) async {
  int sum = 0;
  await for (final age in getAllage()) {
    sum += age;
  }

  //print(sum);
  //print('result of summing all is ${await getAllage().reduce(add)}');

  await for (final num in numbers()) {
    print(num);
  }
  print('------------------------');
  await for (final num in numbers(end: 10, f: evenNumber)) {
    print(num);
  }
}

int add(int a, int b) => a + b;
Stream<int> getAllage() async* {
  yield 10;
  yield 20;
  yield 30;
  yield 40;
  yield 50;
}

typedef IsIncluded = bool Function(int value);
bool evenNumber(int value) => value % 2 == 0;
bool oddNumber(int value) => value % 2 != 0;

Stream<int> numbers({
  int start = 0,
  int end = 4,
  IsIncluded? f,
}) async* {
  for (var i = start; i < end; i++) {
    if (f == null || f(i)) {
      yield i;
    }
  }
}
