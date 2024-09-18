// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 30);
  int _conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numeros de clicks',
              style: _estiloTexto,
            ),
            Text('$_conteo', style: _estiloTexto)
          ],
        )),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          onPressed: _sustraer,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          onPressed: _agregar,
          child: Icon(Icons.add),
        ),
        Expanded(
            child: SizedBox(
          width: 10.0,
        )),
        FloatingActionButton(
          onPressed: reset,
          child: Icon(Icons.exposure_zero),
        ),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void reset() {
    setState(() => _conteo = 0);
  }
}
