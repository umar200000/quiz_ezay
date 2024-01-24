import 'package:flutter/material.dart';

import '../tools.dart';

class QuationPage extends StatelessWidget {
  final int counter;
  final Function bottoms;
  QuationPage({super.key, required this.counter, required this.bottoms});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "${data[counter]["Question"]}",
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        bottoms(0),
        bottoms(1),
        bottoms(2),
        bottoms(3),
      ],
    );
  }
}
