import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[_crearSlider(), Expanded(child: _crearImagen())],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.red[400],
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (value) {
        setState(() {
          _valorSlider = value;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://static.wikia.nocookie.net/personajes-de-ficcion-database/images/6/64/Superman.png/revision/latest?cb=20200909145020&path-prefix=es'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
