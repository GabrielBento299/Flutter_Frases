// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
  void setState(Null Function() param0) {}
}

class _BodyState extends State<Body> {
  // ignore: prefer_final_fields
  var _frases = [
    '" Felizes são os que ouvem a palavra de Deus e a guardam ! (Lucas 11:28)" ',
    '" Não amemos de palavras nem de língua, mas por ações e em verdade" ',
    '" O meu mandamento é este: amem uns aos outros como eu amo vocês. (João 15:12)" ',
    '" Se Cristo vos libertar, verdadeiramente sereis livres. (João 8:36)" ',
    '" Quem é correto nunca fracassará e será lembrado para sempre. "',
  ];
  var _fraseGerada = 'Clike abaixo para gerar uma n1ova frase';
  void _gerarFrase() {
    // ignore: unused_local_variable
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/logo.png'),

          Padding(
            padding: const EdgeInsets.all(35.0),
            // ignore: sized_box_for_whitespace
            child: Container(
              width: 325,
              height: 220,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27),
                ),
                color: Colors.amber[700],
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Text(
                      _fraseGerada,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // ignore: deprecated_member_use
          Container(
            width: 200, height: 75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(55),
                gradient: LinearGradient(
                  // ignore: prefer_const_literals_to_create_immutables
                  colors: [
                    Color(0xffF68989),
                    Color(0xffFE5150),
                  ],
                )),
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: _gerarFrase,
              child: Text(
                'Nova Frase',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
