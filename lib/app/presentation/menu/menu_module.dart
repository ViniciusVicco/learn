import 'package:learn/app/presentation/menu/menu_injector.dart';
import 'package:learn/app/presentation/menu/pages/menu/menu_page.dart';
import 'package:learn/core/module/manager/module_manager.dart';
import 'package:flutter/material.dart';

class MenuModule extends Module<MenuInjector> {
  @override
  Map<String, Widget Function(BuildContext context)> get routes => {
        MenuPage.routeName: (
          context,
        ) =>
            MenuPage(),
      };

  @override
  MenuInjector createInjector() => MenuInjector();
}
