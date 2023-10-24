import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int b = 0;
  String a = '';

  void main(value) {
    setState(() {
      a = value;
      if (a == 'Small') {
        b = 150;
      }

      if (a == 'Medium') {
        b = 250;
      }

      if (a == 'Large') {
        b = 350;
      }
    });
  }

  bool sh = false;
  void f(value) {
    setState(() {
      sh = value;
      if (sh == true) {
        b += 900;
      }
      if (sh == false) {
        b -= 900;
      }
    });
  }

  bool sh1 = false;
  void f1(value) {
    setState(() {
      sh1 = value;
      if (sh1 == true) {
        b += 900;
      }
      if (sh1 == false) {
        b -= 900;
      }
    });
  }

  bool sh2 = false;
  void f2(value) {
    setState(() {
      sh2 = value;
      if (sh2 == true) {
        b += 900;
      }
      if (sh2 == false) {
        b -= 900;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 80),
                  child: Image.network(
                      'https://play-lh.googleusercontent.com/eAMYdVivq_M3bJg_XyS2tQQ1NlXmcG8AH59qmI4ShlBMs_kBAZswSkNXybSgyD98YfIH')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Radio(value: 'Small', groupValue: a, onChanged: main),
                      Text(
                        'Small',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value: 'Medium', groupValue: a, onChanged: main),
                      Text(
                        'Medium',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value: 'Large', groupValue: a, onChanged: main),
                      Text(
                        'Large',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      bottom: 28,
                    ),
                    child: Row(
                      children: [
                        Checkbox(value: sh, onChanged: f),
                        Text(
                          'Extra Cheese',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Checkbox(value: sh1, onChanged: f1),
                  Text(
                    'Onion',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Checkbox(value: sh2, onChanged: f2),
                  Text(
                    'Chicken',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Text(
                "Total so'm:$b so'm",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ],
          ),
        ));
  }
}
