import 'package:flutter/material.dart';

class listaPage extends StatefulWidget {
  @override
  _listaPageState createState() => _listaPageState();
}

class _listaPageState extends State<listaPage> {
  List<int> _listaNumeros = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index) {
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/seed/picsum/400/300'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      },
    );
  }
}
