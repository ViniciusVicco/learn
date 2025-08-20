import 'package:get_it/get_it.dart';
import 'package:learn/core/module/manager/module_manager.dart';

abstract class InjectorMethods {
  final _i = GetIt.instance;

  void registerSingleton<T extends Object>(T object) {
    _i.get<InstanceObserver>().registerInstance(T);
    _i.registerSingleton(object);
  }

  void registerFactory<T extends Object>(T Function() objectFunction) {
    _i.get<InstanceObserver>().registerInstance(T);

    _i.registerFactory(objectFunction);
  }
}
