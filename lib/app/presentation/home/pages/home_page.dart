import 'package:flutter/material.dart';

import 'package:learn/app/presentation/home/pages/home_controller.dart';
import 'package:learn/app/presentation/home/pages/home_store.dart';
import 'package:learn/core/page_state/custom_state.dart';
import 'package:learn/core/state/app_state.dart';
import 'package:rx_notifier/rx_notifier.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/HomePage';
  const HomePage({super.key});

  @override
  CustomPageState<HomeController, HomeStore> createState() => _HomePageState();
}

class _HomePageState extends CustomPageState<HomeController, HomeStore> {
  double get height => MediaQuery.of(context).size.height;
  double get width => MediaQuery.of(context).size.width;

  @override
  void initState() {
    controller.loadJsonClassData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: RxBuilder(builder: (context) {
        if (store.state.value.isLoading) {
          return CircularProgressIndicator();
        }
        if (store.state.value.isSuccess) {
          return Text("Sucesso meu chapa");
        }
        return Center();
      }),
    ));
  }
}
