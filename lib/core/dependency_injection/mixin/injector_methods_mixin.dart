import 'package:get_it/get_it.dart';

mixin MethodsInjector {
  final _i = GetIt.instance;

  void registerSingleton<T extends Object>(T object) {
    _i.registerSingleton(object);
  }

  void registerFactory<T extends Object>(T Function() objectFunction) {
    _i.registerFactory(objectFunction);
  }

  void resetModule() {
    _i.reset();
  }
}
