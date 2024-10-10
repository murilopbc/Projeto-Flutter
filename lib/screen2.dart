import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('Sensores cadastrados'),
      ),
      body: Center(child: Text('Aqui serão listados os sensores cadastrados.',
      style: TextStyle(fontSize: 18),
      ),
      ),
    ),
    );
  }
}