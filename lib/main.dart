import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar:AppBar(
        title: const Text("Teste",style: TextStyle(color: Color.fromARGB(255, 82, 223, 0)),),
        backgroundColor: const Color.fromARGB(255, 132, 132, 136),
        
      ),
            body: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Construindo App da Turma', 
              style: TextStyle(fontSize: 24),),SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50),
                ),
              child: Text('Clique aqui'),
              )
              ],
              ),
               ), 
                bottomNavigationBar: const BottomAppBar(
                  color:  Color.fromARGB(255, 53, 52, 52),
                  child: Padding(
                    padding:  EdgeInsets.all(16.0),
                    child: Text(
                      'Aqui é o Rodapé',
                      textAlign: TextAlign.center,
                    ),
                     ),

                ),

     
      ),
     
    );
  }
}