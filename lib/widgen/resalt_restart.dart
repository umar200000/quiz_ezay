import 'package:flutter/material.dart';

class RestartPage extends StatelessWidget {
  final int result;
  final int quetonLength;
  final Function() restart;
  RestartPage(
      {super.key,
      required this.result,
      required this.quetonLength,
      required this.restart});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Result: $result/$quetonLength",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          ElevatedButton.icon(
            onPressed: () => restart(),
            icon: const Icon(Icons.restart_alt),
            label: const Text("RESTART"),
          )
        ],
      ),
    );
  }
}
