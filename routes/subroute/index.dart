import 'dart:developer';

import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_provider_scoping/dart_frog_provider_scoping.dart';

Response onRequest(RequestContext context) {
  log(context.read<String>());
  final counter = context.read<Counter>()..increment();
  log('current count in handler: ${counter.count}');


  return Response(body: 'Welcome to Dart Frog!: ${counter.count}');
}
