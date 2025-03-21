import 'package:flutter/material.dart';

import 'package:learn/app/presentation/auth/pages/auth_page.dart';
import 'package:learn/core/module/manager/module_manager.dart';

import 'auth_injector.dart';

class AuthModule extends Module<AuthInjector> {
  @override
  AuthInjector createInjector() => AuthInjector();

  @override
  Map<String, Widget Function(BuildContext context)> get routes => {
        AuthPage.routeName: (context) => AuthPage(),
      };
}
