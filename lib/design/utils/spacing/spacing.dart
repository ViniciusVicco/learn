import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final double space;

  const Spacing.nano({super.key, this.space = 8});

  const Spacing.xs({super.key, this.space = 16});

  const Spacing.md({super.key, this.space = 24});

  const Spacing.lg({super.key, this.space = 40});

  const Spacing.xlg({super.key, this.space = 64});

  const Spacing.giant({super.key, this.space = 128});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: space,
    );
  }
}
