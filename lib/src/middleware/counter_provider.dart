import 'package:dart_frog/dart_frog.dart';

class Counter {
  int _count = 0;

  void increment() => _count++;

  int get count => _count;
}

Middleware counterProvider() {
  return provider<Counter>((context) {
    return Counter();
  });
}
