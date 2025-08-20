import 'package:get_it/get_it.dart';
import 'package:learn/app/presentation/menu/pages/menu/menu_page_controller.dart';
import 'package:learn/app/presentation/menu/pages/menu/menu_store.dart';
import 'package:learn/core/dependency_injection/dependency_injection.dart';

class MenuInjector extends ModuleInjector {
  @override
  void controllers() {
    registerFactory(
      () => MenuPageController(store: GetIt.instance.get<MenuStore>()),
    );
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
    registerSingleton(MenuStore());
  }

  @override
  void useCases() {
    // TODO: implement useCases
  }
}
