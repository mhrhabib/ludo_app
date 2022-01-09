import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LudoHomePage(),
    );
  }
}

class LudoHomePage extends StatefulWidget {
  const LudoHomePage({Key? key}) : super(key: key);

  @override
  _LudoHomePageState createState() => _LudoHomePageState();
}

class _LudoHomePageState extends State<LudoHomePage> {
  int leftDice = 1;
  int rightDice = 1;

  void changeTheDice() {
    setState(() {
      rightDice = Random().nextInt(6) + 1;
      leftDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text("ludo app"),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: InkWell(
                      onTap: changeTheDice,
                      child: Image.asset("assets/images/dice$leftDice.png")),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: InkWell(
                      onTap: changeTheDice,
                      child: Image.asset("assets/images/dice$rightDice.png")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
