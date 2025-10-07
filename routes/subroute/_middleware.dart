import 'dart:developer';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_provider_scoping/dart_frog_provider_scoping.dart';

Handler middleware(Handler handler) {
  return handler.use(
    provider<String>((context) {
      final counter = context.read<Counter>()..increment();
      log('current count in middleware: ${counter.count}');

      return 'Hello Dart Frog!';
    }),
  );
}
