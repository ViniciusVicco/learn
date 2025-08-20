import 'package:flutter/material.dart';
import 'package:learn/app/presentation/main/loading/loading_page.dart';
import 'package:learn/core/module/manager/module_manager.dart';

class App extends StatelessWidget {
  final ModuleManager moduleManager;

  const App(this.moduleManager, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [],
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[100],
          centerTitle: true,
          elevation: 2,
        ),
      ),
      routes: moduleManager.allRoutes,
      home: LoadingPage(),
    );
  }
}
