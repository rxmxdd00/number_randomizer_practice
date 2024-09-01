import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const RandomizerPage());

class RandomizerPage extends StatefulWidget {
  const RandomizerPage({super.key});

  @override
  State<RandomizerPage> createState() => _RandomizerPageState();
}

class _RandomizerPageState extends State<RandomizerPage> {
  int numRes = 00000;
  var resVal = '--';

  int randomizer() {
    var randNum = Random().nextInt(99999);

    oddOrEven(randNum);
    return randNum;
  }

  void oddOrEven(int num) {
    if (num % 2 == 0) {
      resVal = 'Even';
    } else {
      resVal = 'Odd';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    '$numRes',
                    style: TextStyle(
                      fontSize: 128.0,
                      color: Colors.teal.shade900,
                    ),
                  ),
                ),
                Text(
                  'This number is : $resVal',
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.teal.shade900,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var randNum = randomizer();
                      print(randNum);
                      numRes = randNum;
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color?>(
                          Colors.teal.shade900)),
                  child: const Text(
                    'Generate number',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
