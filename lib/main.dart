import 'package:flutter/material.dart';

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
  String localSensor = ""; //Armazena o texto do sensor
  String tipo = ''; //Armazena o texto do sensor
  String macAdress = '';
  String latitude = '';
  String longitude = '';
  String responsavel = '';
  String observacao = '';
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _tipoController = TextEditingController();
  final TextEditingController _MacController = TextEditingController();
  final TextEditingController _LatController = TextEditingController();
  final TextEditingController _LongController = TextEditingController();
  final TextEditingController _RespController = TextEditingController();
  final TextEditingController _ObsController = TextEditingController();
  
  @override
  void dispose() {
    _controller.dispose();
    _tipoController.dispose();

    super.dispose();
  }

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
              //Aqui vamos inserir a caixa de texto de input de Local do Sensor
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: "Local do Sensor",
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20, //limite de caracteres para digitação
                  onChanged: (value) {
                    localSensor = value; //Atualiza a variavel ao digitar
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
                  maxLength: 20, //limite de caracteres para digitação
                  onChanged: (value) {
                    tipo = value; //Atualiza a variavel ao digitar
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _MacController,
                  decoration: InputDecoration(
                    labelText: "Mac Adress",
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 14, //limite de caracteres para digitação
                  onChanged: (value) {
                    tipo = value; //Atualiza a variavel ao digitar
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _LatController,
                  decoration: InputDecoration(
                    labelText: "Latitude",
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20, //limite de caracteres para digitação
                  onChanged: (value) {
                    tipo = value; //Atualiza a variavel ao digitar
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _LongController,
                  decoration: InputDecoration(
                    labelText: "Longitude",
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20, //limite de caracteres para digitação
                  onChanged: (value) {
                    tipo = value; //Atualiza a variavel ao digitar
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _RespController,
                  decoration: InputDecoration(
                    labelText: "Responsável",
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20, //limite de caracteres para digitação
                  onChanged: (value) {
                    tipo = value; //Atualiza a variavel ao digitar
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _ObsController,
                  decoration: InputDecoration(
                    labelText: "observação",
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 100, //limite de caracteres para digitação
                  onChanged: (value) {
                    tipo = value; //Atualiza a variavel ao digitar
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    texto = localSensor.isNotEmpty
                        ? 'Local do sensor: $localSensor\nTipo: $tipo'
                        : 'Por favor, insira um local do sensor'; //Atualiza o texto no botão
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
