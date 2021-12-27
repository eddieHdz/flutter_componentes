import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      //body: ListView(children: _crearItems()),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista.add(tempWidget);
      lista.add(Divider(
        height: 20,
        thickness: 5,
        color: Colors.blue[200],
      ));
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(
            height: 20,
            thickness: 5,
            color: Colors.pink[200],
          )
        ],
      );
    }).toList();
  }
}
