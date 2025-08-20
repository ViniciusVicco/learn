import 'package:flutter/material.dart';
import 'package:learn/app/presentation/menu/pages/menu/menu_page_controller.dart';
import 'package:learn/app/presentation/menu/pages/menu/menu_store.dart';

import '../../../../../core/page_state/custom_state.dart';

class MenuPage extends StatefulWidget {
  static const String routeName = "/MenuPage";
  const MenuPage({super.key});

  @override
  CustomPageState<MenuPageController, MenuStore> createState() =>
      _MenuPageState();
}

class _MenuPageState extends CustomPageState<MenuPageController, MenuStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder(
              valueListenable: store.state,
              builder: (context, value, child) {
                if (value.isLoading) {
                  return Text("Carregando Garoto");
                }
                if (value.isError) {
                  return Text("Errou Garoto");
                }

                if (value.isSuccess) {
                  return Text("Sucesso Garoto");
                }
                return ElevatedButton(
                    onPressed: () {
                      controller.obterPokemonAleatorio();
                    },
                    child: Text("Modificar estado"));
              }),
          Center(
            child: Text(""),
          ),
        ],
      ),
    );
  }
}
