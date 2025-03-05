import 'package:flutter/material.dart';
import 'package:learn/app/app.dart';
import 'package:learn/app/presentation/auth/module/auth_module.dart';

void main() {
  final moduleManager = ModuleManager([
    AuthModule(),
    // Adicione mais módulos aqui...
  ]);

  runApp(App(moduleManager));
}
