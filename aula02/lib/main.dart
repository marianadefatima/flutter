// Importar pacotes
// O pacote Flutter Material fornece componentes de interface do usuário para criar aplicativos Flutter.
import 'package:aula02/exemplo02.dart';
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
      home: const Pagina(),
    );
  }
}

