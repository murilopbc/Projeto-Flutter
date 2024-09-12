import 'package:flutter/material.dart';

main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar:AppBar(
        title: const Text("Teste",style: TextStyle(color: Color.fromARGB(255, 82, 223, 0)),),
        backgroundColor: Color.fromARGB(255, 132, 132, 136),
        
      ),
            body: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Construindo App da Turma', style: TextStyle(fontSize: 24),),SizedBox(height: 20),ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(minimumSize: Size(200, 50),),child: Text('Clique aqui'),)],
              ), ),     
      ),

    );
  }
}