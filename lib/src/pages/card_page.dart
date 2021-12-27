import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.00,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue[400],
              ),
              title: Text('Soy un titulo en una tarjeta'),
              subtitle: Text('Soy un subtitulo en una tarjeta')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Ok'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://profucom.com.mx/wp-content/uploads/2019/04/travel-landscape-01.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.00,
            fit: BoxFit.cover,
          ),
          /* Image(
            image: NetworkImage(
                'https://profucom.com.mx/wp-content/uploads/2019/04/travel-landscape-01.jpg'),
          ), */
          Container(
              padding: EdgeInsets.all(10.00),
              child: Text('texto random para poner'))
        ],
      ),
    );
  }
}
