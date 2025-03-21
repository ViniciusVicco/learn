import 'package:flutter/material.dart';
import 'package:learn/app/presentation/home/home_injector.dart';
import 'package:learn/app/presentation/home/pages/home_page.dart';
import 'package:learn/core/module/manager/module_manager.dart';

class HomeModule extends Module<HomeInjector> {
  @override
  HomeInjector createInjector() => HomeInjector();

  @override
  Map<String, Widget Function(BuildContext context)> get routes => {
        HomePage.routeName: (context) => HomePage(),
      };
}
