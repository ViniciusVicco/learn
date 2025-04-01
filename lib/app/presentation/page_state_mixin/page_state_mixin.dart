import 'package:get_it/get_it.dart';
import 'package:learn/core/module/controller.dart';
import 'package:learn/core/module/store.dart';

mixin PageStateMixin<C extends Controller, S extends Store> {
  late final C _controller;

  C get controller {
    return GetIt.instance.get<C>();
  }

  Type get storeType => S;
}
