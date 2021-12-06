import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: VidenteVirtualPage(),
  ));
}


class VidenteVirtualPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xff332B25),
      appBar: AppBar(
        title: Text('Vidente virtual'),
        backgroundColor: Colors.brown[800],
      ),
      body: Vidente(),
    );
  }
}


class Vidente extends StatefulWidget {
  @override
  _VidenteState createState() => _VidenteState();
}

class _VidenteState extends State<Vidente> {
  int numeroImagem = 1;

  @override
  Widget build(BuildContext context) {
    return Center(   
      child: TextButton(
        onPressed: (){
          setState(() {
            
            numeroImagem = Random().nextInt(5) + 2;

          });

        },
      child: Image.asset('imagens/vidente$numeroImagem.png'),

      ),   
       );
  }
}


