import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _backgroundColor = Colors.white;
  String _message = '';
  bool _showContainer = false;
  
  @override
  void initState() {
    super.initState();
    _startColorTransition();
  }
  
  void _startColorTransition() {
    Timer(Duration(seconds: 2), () {
      setState(() {
        _backgroundColor = Colors.yellow;
      });
    });
    
    Timer(Duration(seconds: 4), () {
      setState(() {
        _backgroundColor = Colors.orange;
      });
    });
    
    Timer(Duration(seconds: 6), () {
      setState(() {
        _backgroundColor = Colors.red;
        _message =
            "Cada minuto dedicado ao aprendizado e crescimento pessoal é um passo na direção dos seus sonhos. Então, que tal aproveitar cada momento para construir um futuro incrível?";
        _showContainer = true; // Mostra o container após 6 segundos
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: _showContainer
          ? Container(  // Mostra o container apenas quando _showContainer for true
            color: Colors.white,
            padding: EdgeInsets.all(20),
          child: Text(
            _message,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        
      )
    : SizedBox(),
   )
      )
    );
        }
}