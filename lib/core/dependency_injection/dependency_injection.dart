import 'package:learn/core/dependency_injection/mixin/injector_methods_mixin.dart';

abstract class ModuleInjector extends InjectorMethods {
  void registerModule() {
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

  void stores(); // Armazena valores em tempo de execução

  void core();

  void useCases();

  void repositories();

  void dataSources();

  void controllers();
}
