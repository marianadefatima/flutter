// Classe de texto

import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  // Atributo
  String? nome;
  Color? cor;
  double? tamanhoFonte;

  // Contrutor
  /*Quando temos dois contrutores, removemos o "const"*/
  Texto({super.key});
  Texto.obterNome({super.key, this.nome});
  Texto.obterNomeCor({super.key, this.nome, this.cor});
  Texto.obterNomeCortamanhoFonte ({super.key, this.nome, this.cor, this.tamanhoFonte});

  // Métoto (Ele vai exibir o nosso Hello Word, por exemplo)
  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello $nome !",
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: tamanhoFonte, color: cor),
    );
  }
static Widget obterNomeCorTamanhoFonte (
      {required String nome, Color? cor, required double tamanhoFonte}) {
    return Text(
      "Hello $nome !",
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: tamanhoFonte, color: cor),
    );
  }
}

//1° Exemplo
// void main() {
//   runApp(const Text(
//     "Hello Word!",
//     textDirection: TextDirection.ltr,style: TextStyle(fontSize: 36, color: Colors.blue),
//   ));
// }