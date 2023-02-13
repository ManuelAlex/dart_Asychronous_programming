void main(List<String> args) async {
  print(await getName());
  print(await getStreet());
  print(await getPhoneNumber());
  print(await getCity());
  print(await getCountry());
  print(await getZipCode());
}

Future<String> getName() async => 'John Doe';
Future<String> getStreet() => Future.value('No 10 Main str');
Future<String> getPhoneNumber() =>
    Future.delayed(const Duration(seconds: 1), (() => '6566-657676776'));

Future<String> getCity() async {
  await Future.delayed(const Duration(seconds: 1));
  return 'New York';
}

// in this context async doesn't do anything
Future<String> getCountry() async => Future.value('Nigeria');
Future<String> getZipCode() async =>
    Future.delayed(const Duration(seconds: 1), (() => '+234'));
