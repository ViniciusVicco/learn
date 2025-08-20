import 'dart:math';

import 'package:learn/app/data/menu/pokemon_basic_model.dart';
import 'package:learn/app/presentation/menu/pages/menu/menu_store.dart';
import 'package:learn/core/module/controller.dart';
import 'package:learn/core/state/app_state.dart';

class MenuPageController extends Controller {
  final MenuStore store;
  MenuPageController({required this.store});

  void gerarEstadoAleatorio() async {
    int inteiroAleatorio = Random().nextInt(3);

    if (inteiroAleatorio == 1) {
      store.state.value = AppState.hasSuccess();
    }
    if (inteiroAleatorio == 2) {
      store.state.value = AppState.isLoading();
    } else {
      store.state.value = AppState.hasError();
    }
    await Future.delayed(Duration(seconds: 2));
    store.state.value = AppState();
  }

  Future<void> obterPokemonAleatorio() async {
    int indexDaPokedex = Random().nextInt(19) + 1;
    store.state.value = AppState.isLoading();
    final deuBoa = await PokemonBasicModel.testUnit();
    if (deuBoa) {
      store.state.value = AppState.hasSuccess();
    } else {
      store.state.value = AppState.hasError();
    }
    await Future.delayed(Duration(seconds: 2));
    store.state.value = AppState();
  }
}
