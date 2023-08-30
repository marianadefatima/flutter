
import 'package:flutter/material.dart';
// o pacote flutter/material.dart, que contém os widgets básicos do Flutter.

void main() {
  runApp(MyApp());
}
/*main(), que é a função principal do aplicativo. 
Esta função chama a função runApp(), que passa como argumento uma instância da classe MyApp*/
/*A classe MyApp é uma classe StatelessWidget, que significa que não tem estado. 
O estado de uma widget é a informação que muda ao longo do tempo, como a posição de um widget ou o texto que ele mostra.*/
class Category {
  final String name;
  final IconData icon;

  Category({required this.name, required this.icon});
}

class MyApp extends StatelessWidget {
  final List<Category> categories = [
    Category(name: 'Android', icon: Icons.android),
    Category(name: 'iOS', icon: Icons.phone_iphone),
    Category(name: 'Windows', icon: Icons.devices),
    Category(name: 'Other', icon: Icons.devices_other),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smartphone Categories',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Smartphone Categories')),
        body: CategoryList(categories: categories),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  final List<Category> categories;
/*A classe CategoryList é uma classe StatelessWidget que é responsável por listar as categorias de smartphones. 
Este método retorna um objeto da classe ListView, que é uma widget que exibe uma lista de itens. */
  CategoryList({required this.categories});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      /*O objeto ListView tem um atributo itemCount, que é o número de itens na lista. */
      /*O objeto ListView também tem um atributo itemBuilder, que é uma função que é chamada para construir cada item na lista. 
      Neste caso, a função itemBuilder() é responsável por construir um ListTile para cada objeto na lista categories. */
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(categories[index].icon),
          title: Text(categories[index].name),
        );
      },
    );
  }
}