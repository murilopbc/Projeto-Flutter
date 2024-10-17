import 'package:flutter/material.dart';

class SegundaTelaApp extends StatelessWidget {
  const SegundaTelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sensores Cadastrados'),
        ),
        body: Center(
          child: Text(
            'Aqui serão listados os sensores cadastrados.',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}