import 'package:flutter/material.dart';
import 'package:learn/app/app.dart';
import 'package:learn/app/presentation/auth/auth_module.dart';
import 'package:learn/app/presentation/home/home_module.dart';
import 'package:learn/core/module/manager/module_manager.dart';

void main() {
  final moduleManager = ModuleManager([
    AuthModule(),
    HomeModule()
    // Adicione mais módulos aqui...
  ]);

  runApp(App(moduleManager));
}
