import 'package:learn/app/presentation/home/pages/home_controller.dart';
import 'package:learn/app/presentation/home/pages/home_store.dart';
import 'package:learn/core/dependency_injection/dependency_injection.dart';

class HomeInjector extends ModuleInjector {
  @override
  void controllers() {
    registerFactory(() => HomeController());
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
    registerSingleton(HomeStore());
  }

  @override
  void useCases() {
    // TODO: implement useCases
  }
}
