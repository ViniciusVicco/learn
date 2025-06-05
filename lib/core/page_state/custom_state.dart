import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:learn/core/module/controller.dart';
import 'package:learn/core/module/store.dart';

abstract class CustomPageState<C extends Controller, S extends Store>
    extends State {
  C get controller => GetIt.instance.get<C>();
  S get store => GetIt.instance.get<S>();
}
