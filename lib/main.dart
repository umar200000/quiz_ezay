import 'package:flutter/material.dart';
import 'package:umar1/tools.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  double hoji = 100;
  String str = "Hello Umarjon";

  int result = 0;

  Widget bottoms(int index) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade300,
        ),
        onPressed: () {
          setState(() {
            data[counter]["Answer"][index]["check"] ? result++ : 0;
            counter++;
          });
        },
        child: Text("${data[counter]["Answer"][index]["option"]}",
            style: const TextStyle(fontSize: 20, color: Colors.black)));
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
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "${data[counter]["Question"]}",
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        bottoms(0),
                        bottoms(1),
                        bottoms(2),
                        bottoms(3),
                      ],
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Result: $result/${data.length}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              setState(() {
                                counter = 0;
                                result = 0;
                              });
                            },
                            icon: const Icon(Icons.restart_alt),
                            label: const Text("RESTART"),
                          )
                        ],
                      ),
                    )),
        ),
      ),
    );
  }
}
