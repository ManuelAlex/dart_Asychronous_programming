void main(List<String> args) async {
  // final length = await calculateStringLength(await getFullname());
  // print(length);

  final length =
      await getFullname().then((value) => calculateStringLength(value));
  print(length);
  final length2 = await getFullname().whenComplete(() => 'error');
  print(length2);
}

//future chaining
// feeding the value of a future to another future
Future<String> getFullname() =>
    Future.delayed(const Duration(seconds: 2), (() => 'John Doe'));
Future<int> calculateStringLength(String value) =>
    Future.delayed(const Duration(seconds: 2), (() => value.length));
