import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de clicks:',
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: _estiloTexto,
            ),
          ],
        )),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _clean),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _remove),
        SizedBox(width: 30),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add),
      ],
    );
  }

  void _add() {
    setState(() => _conteo++);
  }
  void _remove() {
    setState(() => _conteo--);
  }
  void _clean() {
    setState(() => _conteo = 0);
  }
}

// FloatingActionButton(
//   child: Icon(Icons.add),
//   onPressed: () {
//     // print('hola mundo');
//     // conteo = conteo + 1;
//     setState(() {
//       _conteo++;
//     });
//   },
// ),
