// Importar pacotes
// O pacote Flutter Material fornece componentes de interface do usuário para criar aplicativos Flutter.
import 'package:flutter/material.dart';

// Método de inicialização/ execução
// O método runApp() inicia o aplicativo Flutter.
void main() {
  runApp(AppWidget());
}

// Especificar o tipo de layout (Material DART)
// A classe StatelessWidget representa um widget sem estado.
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Pagina(),
    );
  }
}

// StatefulWidget - Página dinâmica
// A classe StatefulWidget representa um widget com estado.
class Pagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

// Classe contendo toda a interface gráfica
// A classe State representa o estado de um widget StatefulWidget.
class ConteudoPagina extends State {
  //Variável
  Color cor = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // print("Você clicou no botão");

        setState(() { if (cor == Colors.purple) {
          cor = Colors.green;
        } else {
          cor = Colors.purple;
        }});
        //setState significa que você está modificando algum elemento;
      },
      child: const Text("Clique aqui!"),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[900]),
    );
  }
}
