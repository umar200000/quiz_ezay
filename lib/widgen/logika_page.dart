import 'package:flutter/material.dart';

import '../tools.dart';

class LogikaPage extends StatelessWidget {
  final int index;
  final Function helper;
  final int counter;
  LogikaPage(
      {super.key,
      required this.index,
      required this.helper,
      required this.counter});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        //   style: ElevatedButton.styleFrom(primary: Colors.blue.shade300),
        onPressed: () {
          helper(index);
        },
        child: Text("${data[counter]["Answer"][index]["option"]}",
            style: const TextStyle(fontSize: 20, color: Colors.black)));
  }
}
