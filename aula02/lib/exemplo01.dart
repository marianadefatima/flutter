// Importar pacotes
// O pacote Flutter Material fornece componentes de interface do usuário para criar aplicativos Flutter.
import 'package:flutter/material.dart';

// StatefulWidget - Página dinâmica
// A classe StatefulWidget representa um widget com estado.
class Pagina extends StatefulWidget {
  const Pagina({super.key});
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
        setState(() {
           if (cor == Colors.purple) {
          cor = Colors.green;
        } else {
          cor = Colors.purple;
        }});
        //setState significa que você está modificando algum estado;
      },
      //child é o componente que complementa o botão
      style: ElevatedButton.styleFrom(backgroundColor: cor),
      child: const Text("Clique aqui!"),
    );
  }
}
