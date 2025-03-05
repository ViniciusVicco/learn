import 'package:get_it/get_it.dart';

mixin MethodsInjector {
  final _i = GetIt.instance;

  void registerSingleton<T extends Object>(T object) {
    _i.registerSingleton(object);
  }

  void registerFactory<T extends Object>(T Function() objectFunction) {
    _i.registerFactory(objectFunction);
  }
}

abstract class ModuleInjector with MethodsInjector {
  void registerModule() {
    _resetModule();
    queueInstanciation();
  }

  void queueInstanciation() {
    stores();
    core();
    useCases();
    repositories();
    dataSources();
    controllers();
  }

  void stores();

  void core();

  void useCases();

  void repositories();

  void dataSources();

  void controllers();

  void _resetModule() {
    _i.reset();
  }
}
