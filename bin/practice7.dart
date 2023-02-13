import 'dart:async';

void main(List<String> args) async {
  final controller = StreamController();
  controller.sink.add('hello');
  controller.sink.add('world');
  await for (final str in controller.stream) {
    print(str);
  }
  controller.close();
}
