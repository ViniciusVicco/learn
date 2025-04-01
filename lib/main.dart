import 'package:flutter/material.dart';
import 'package:learn/app/app.dart';
import 'package:learn/app/presentation/auth/auth_module.dart';
import 'package:learn/app/presentation/home/home_module.dart';
import 'package:learn/core/module/manager/module_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ModuleManager.registerInstanceObserver();
  final moduleManager = ModuleManager([
    AuthModule()..module.registerModule(),
    HomeModule()..module.registerModule(),
    // Adicione mais módulos aqui...
  ]);

  runApp(App(moduleManager));
}
