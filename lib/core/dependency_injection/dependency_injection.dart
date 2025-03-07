import 'package:get_it/get_it.dart';
import 'package:learn/core/dependency_injection/mixin/injector_methods_mixin.dart';

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

  void _resetModule() {}
}
