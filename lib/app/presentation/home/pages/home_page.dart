import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:learn/app/presentation/home/pages/home_controller.dart';
import 'package:learn/app/presentation/home/pages/home_store.dart';
import 'package:learn/app/presentation/page_state_mixin/page_state_mixin.dart';
import 'package:learn/core/module/manager/module_manager.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/HomePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with PageStateMixin<HomeController, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  controller.printar();
                },
                child: Text("Printar")),
          )
        ],
      ),
    );
  }
}
