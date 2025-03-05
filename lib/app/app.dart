import 'package:flutter/material.dart';
import 'package:learn/app/presentation/auth/module/auth_module.dart';
import 'package:learn/app/presentation/loading/loading_page.dart';

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
