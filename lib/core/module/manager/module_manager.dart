import 'package:get_it/get_it.dart';

import '../../dependency_injection/dependency_injection.dart';
import 'package:flutter/material.dart';

/// Classe base para os módulos
abstract class Module<M extends ModuleInjector> {
  late final M injector;

  Module() {
    injector = createInjector();
    debugPrint("Initialized: ${runtimeType.toString()}");
  }

  /// Método para inicializar o injetor do módulo
  M createInjector();

  /// Rotas associadas ao módulo
  Map<String, Widget Function(BuildContext)> get routes;
}

/// Gerenciador de módulos
class ModuleManager {
  final List<Module> modules;

  ModuleManager(this.modules) {
    _initModules();
  }

  void _initModules() {
    for (var module in modules) {
      module.createInjector();
      module.injector.registerModule();
    }
  }

  static registerInstanceObserver() {
    GetIt.I.registerLazySingleton(
      () {
        return InstanceObserver();
      },
    );
  }

  /// Combina as rotas de todos os módulos
  Map<String, Widget Function(BuildContext)> get allRoutes {
    return {
      for (var module in modules) ...module.routes,
    };
  }
}

class InstanceObserver {
  List<Object> instances = [];
  void registerInstance(Object instance) {
    instances.add(instance);
  }

  void showInstances() {
    for (var element in instances) {
      debugPrint(element.toString());
    }
  }
}
