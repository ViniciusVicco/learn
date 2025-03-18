import 'package:flutter/material.dart';
import 'package:learn/design/design_sytem_mixin.dart';
import 'package:learn/design/utils/spacing/spacing.dart';
import 'package:lottie/lottie.dart';

class AuthPage extends StatefulWidget {
  static String routeName = '/AuthPage';
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with DesignSytemMixin {
  void showAnonimousBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacing.lg(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Você compreende que não salvaremos dados nem poderemos vincular informações de compra/venda a sua conta",
                style: typography.commom.md,
              ),
            ),
            Spacing.md(),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Ok, entendi",
                  style: typography.commom.xs,
                )),
            Spacing.md(),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: LottieBuilder.asset(
                  'assets/lotties/welcome_sparks.json',
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Já tem conta ?",
                        style: typography.commom.xs,
                      )),
                  Spacing.md(),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Quero me cadastrar",
                        style: typography.commom.xs,
                      )),
                  Spacing.md(),
                  ElevatedButton(
                      onPressed: showAnonimousBottomSheet,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Permanecer anonimo",
                            style: typography.commom.xs,
                          ),
                          SizedBox.square(
                            dimension: 24,
                            child: LottieBuilder.asset(
                                'assets/lotties/eye_spy.json'),
                          )
                        ],
                      )),
                  Spacing.giant(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
