// Importar pacote material

import 'package:aula01/Texto.dart';
import 'package:flutter/material.dart';

// Método de incialização
/*A estrurura do dart começa aqui*/

// Método de incialização
void main() {
  // runApp(Texto.obterNome(nome: "Mariana"));
  // runApp(Texto.obterNomeCor(nome: "Mariana", cor: Colors.purpleAccent[400],))
  runApp(Texto.obterNomeCorTamanhoFonte(
      nome: "Mariana", cor: Colors.purpleAccent[400], tamanhoFonte: 70));
}