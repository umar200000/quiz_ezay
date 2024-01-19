import 'package:flutter/material.dart';
import 'package:umar1/tools.dart';
import 'package:umar1/widgen/logika_page.dart';
import 'package:umar1/widgen/quation_page.dart';
import 'package:umar1/widgen/resalt_restart.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  int result = 0;

  Widget bottoms(int index) {
    return LogikaPage(index: index, helper: helper, counter: counter);
  }

  helper(int index) {
    setState(() {
      data[counter]["Answer"][index]["check"] ? result++ : 0;
      counter++;
    });
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple.shade300,
            title: const Text("English Quiz"),
          ),
          body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: counter < data.length
                  ? QuationPage(counter: counter, bottoms: bottoms)
                  : RestartPage(
                      result: result,
                      quetonLength: data.length,
                      restart: restart)),
        ),
      ),
    );
  }

  restart() {
    setState(() {
      counter = 0;
      result = 0;
    });
  }
}
