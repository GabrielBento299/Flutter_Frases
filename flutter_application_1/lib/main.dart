// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_application_1/body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

// ignore: must_be_immutable
class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // ignore: prefer_final_fields

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.red,
              height: 220,
              child: Column(
                children: [
                  Text('dsfadsf'),
                  Image.asset('assets/logo.png'),
                ],
              ),
            ),
            Container(
              height: 50,
              color: Colors.black,
              child: Center(
                child: Text(
                  'Frases Para você',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            List(
                text: 'Coleções',
                icons: Icons.fireplace,
                color: Colors.orange[600]),
            List(
                text: 'Coleções',
                icons: Icons.fireplace,
                color: Colors.orange[600]),
            List(
                text: 'Coleções',
                icons: Icons.fireplace,
                color: Colors.orange[600])
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 15,
        bottomOpacity: 15,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Icon(Icons.web),
        ],
        backgroundColor: Colors.green,
        title: Text('Frase do Dia',
            style: const TextStyle(
              color: Colors.white,
            )),
        centerTitle: true,
      ),
      // ignore: sized_box_for_whitespace
      body: Body(),
    );
  }
}

class List extends StatelessWidget {
  final String text;
  final IconData icons;
  final dynamic color;

  const List(
      {Key? key, required this.text, required this.icons, icon, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Icon(icons, color: color),
        Text(text,
            style: TextStyle(
              fontSize: 16,
            ))
      ]),
    );
  }
}
