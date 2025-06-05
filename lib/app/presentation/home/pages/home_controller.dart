import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:learn/app/presentation/home/pages/home_store.dart';
import 'package:learn/core/module/controller.dart';
import 'package:learn/core/state/app_state.dart';

class HomeController extends Controller {
  final HomeStore store;
  HomeController({required this.store});
  void printar() {
    print("Print printoso N ${store.qtdPrintPrintoso}");
    store.qtdPrintPrintoso++;
  }

  Future<void> loadJsonClassData() async {
    store.state.value = AppState.isLoading();
    try {
      await Future.delayed(Duration(seconds: 2));
      String data = await rootBundle
          .loadString('assets/json/necromancer/class/necromancer.json');
      final jsonResult = jsonDecode(data);
      print(jsonResult);
      store.state.value = AppState.hasSuccess();
    } catch (error) {
      store.state.value = AppState.hasError();
    }
  }
}
