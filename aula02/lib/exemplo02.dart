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
  class ConteudoPagina extends State {
    @override
    Widget build(BuildContext context) {
     return Scaffold( 
      appBar: AppBar(
        title: const Text("Utilizando Scaffold")),
  body: SizedBox(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //mainAxisAlignment define o espaçamento dos nossos elementos
      /* Para colocar no à direita ou esquerda da página:
       deve-se colocar start (esquerda) ou end (direita)*/
      children: [
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
        ),

      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(border: Border.all(color: Colors.green)),
        ),
        
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
        ),
      ],
    ),));
  } 
}