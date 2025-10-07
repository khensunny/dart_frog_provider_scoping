import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_provider_scoping/dart_frog_provider_scoping.dart';

Handler middleware(Handler handler) {
  return handler.use(counterProvider());
}
