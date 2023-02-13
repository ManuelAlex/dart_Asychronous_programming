void main(List<String> args) {
  final stream =
      Stream.periodic(const Duration(seconds: 1), (i) => i * i).take(10);

  final subscription = stream.listen(print); // A StreamSubscription<int>.
//To pause the subscription, use [pause].

  subscription.pause();
  print(subscription.isPaused); // true
//To resume after the pause, use [resume].

// Do some work.
  subscription.resume();
  print(subscription.isPaused); // false
//To cancel the subscription, use [cancel].

// Do some work.
  subscription.cancel();
}
