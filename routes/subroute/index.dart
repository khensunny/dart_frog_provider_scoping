import 'dart:developer';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_provider_scoping/dart_frog_provider_scoping.dart';

Response onRequest(RequestContext context) {
  // I expect counter to be indirectly created because this string value depends on it
  // and then the message 'current counter in middleware: 1' will be logged
  log(context.read<String>());
  // I expect the same counter indirectly created by `context.read<String>()` to be returned
  // and here the message 'current count in handler: 2' will be logged
  final counter = context.read<Counter>()..increment();
  log('current count in handler: ${counter.count}');


  return Response(body: 'Welcome to Dart Frog!: ${counter.count}');
}
