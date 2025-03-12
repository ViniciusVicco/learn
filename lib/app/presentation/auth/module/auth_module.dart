import 'package:flutter/material.dart';

import 'package:learn/app/presentation/auth/pages/auth_page.dart';
import 'package:learn/core/module/manager/module_manager.dart';

import '../../../injectors/auth_injector.dart';

/// Exemplo de um módulo de autenticação
class AuthModule extends Module<AuthInjector> {
  @override
  AuthInjector createInjector() => AuthInjector();

  @override
  Map<String, Widget Function(BuildContext context)> get routes => {
        AuthPage.routeName: (context) => AuthPage(),
      };
}
