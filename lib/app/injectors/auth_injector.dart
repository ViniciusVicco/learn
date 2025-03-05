import 'package:learn/app/presentation/auth/pages/auth_page_controller.dart';
import 'package:learn/app/presentation/auth/pages/auth_page_store.dart';
import 'package:learn/core/dependency_injection/dependency_injection.dart';

class AuthInjector extends ModuleInjector {
  @override
  void controllers() {
    registerFactory(() => AuthPageController());
  }

  @override
  void core() {
    // TODO: implement core
  }

  @override
  void dataSources() {
    // TODO: implement dataSources
  }

  @override
  void repositories() {
    // TODO: implement repositories
  }

  @override
  void stores() {
    registerSingleton(AuthPageStore());
  }

  @override
  void useCases() {
    // TODO: implement useCases
  }
}
