import 'package:flutter/material.dart';
import 'package:learn/app/app.dart';
import 'package:learn/app/presentation/menu/menu_module.dart';
import 'package:learn/core/module/manager/module_manager.dart';
import 'package:learn/app/presentation/main/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ModuleManager.registerInstanceObserver();
  final moduleManager = ModuleManager([MenuModule()]);

  runApp(
    App(
      moduleManager,
      home: const HomePage(),
    ),
  );
}
