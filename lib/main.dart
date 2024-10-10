import 'package:flutter/material.dart';
import 'screen2.dart';
void main() {
  runApp(const Projeto01App());
}

class Projeto01App extends StatefulWidget {
  const Projeto01App({super.key});
  @override
  Projeto01AppState createState() => Projeto01AppState();
}

class Projeto01AppState extends State<Projeto01App> {
  String texto = "Contruindo o App da Turma 1";
  String localSensor = "";
  String tipo = ''; 
  String macAdress = '';
  String latitude = '';
  String longitude = '';
  String responsavel = '';
  String observacao = '';
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _tipoController = TextEditingController();
  final TextEditingController _macController = TextEditingController();
  final TextEditingController _latController = TextEditingController();
  final TextEditingController _longController = TextEditingController();
  final TextEditingController _respController = TextEditingController();
  final TextEditingController _obsController = TextEditingController();
  
  @override
  void dispose() {
    _controller.dispose();
    _tipoController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Meu Aplicativo',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 27, 1, 61),
        ),
        drawer: Drawer(child:ListView(padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(decoration: BoxDecoration(color: Colors.blue,
          ),
          child: Text('Menu',
          style: TextStyle(color: Colors.white,
          fontSize: 24,
          ),
          ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Tela Principal'),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Segunda Tela'),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder:(context) => SecondScreen()),
              );
            },
          ),

        ],
        ) ,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                texto,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: "Local do Sensor",
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20, 
                  onChanged: (value) {
                    localSensor = value; 
                  },
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _tipoController,
                  decoration: InputDecoration(
                    labelText: "Tipo do Sensor",
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20,
                  onChanged: (value) {
                    tipo = value; 
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _macController,
                  decoration: InputDecoration(
                    labelText: "Mac Adress",
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 14,
                  onChanged: (value) {
                    tipo = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _latController,
                  decoration: InputDecoration(
                    labelText: "Latitude",
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20, 
                  onChanged: (value) {
                    tipo = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _longController,
                  decoration: InputDecoration(
                    labelText: "Longitude",
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20,
                  onChanged: (value) {
                    tipo = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _respController,
                  decoration: InputDecoration(
                    labelText: "Responsável",
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20,
                  onChanged: (value) {
                    tipo = value; 
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _obsController,
                  decoration: InputDecoration(
                    labelText: "observação",
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 100,
                  onChanged: (value) {
                    tipo = value; 
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    texto = localSensor.isNotEmpty
                        ? 'Local do sensor: $localSensor\nTipo: $tipo'
                        : 'Por favor, insira um local do sensor'; 
                  });
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 50),
                ),
                child: Text('Clique aqui!'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Aqui é o rodapé",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
