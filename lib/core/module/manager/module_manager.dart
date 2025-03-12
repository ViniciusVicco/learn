import '../../dependency_injection/dependency_injection.dart';
import 'package:flutter/material.dart';

/// Classe base para os módulos
abstract class Module<M extends ModuleInjector> {
  late final M module;

  Module() {
    module = createInjector();
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
    }
  }

  /// Combina as rotas de todos os módulos
  Map<String, Widget Function(BuildContext)> get allRoutes {
    return {
      for (var module in modules) ...module.routes,
    };
  }
}
