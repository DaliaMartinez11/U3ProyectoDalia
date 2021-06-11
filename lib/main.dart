import 'package:flutter/material.dart';
import 'package:dalia/pages/first_pages.dart';
import 'package:dalia/pages/second_pages.dart';
import 'package:dalia/pages/third_pages.dart';

void main() => runApp(BurguerApp());

class BurguerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CFE',
      home: PaginaInicio(),
    ); //fin de MaterialApp
  } //fin de Widget{}
} //fin de BurguerApp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} //fin de clase PaginaInicio

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Widget child;
    switch (_index) {
      case 0:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FirstPage());
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
    } //fin de switch seleccion de paginas

    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Bienvenido')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.format_align_center, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Inciar sesion')), //
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.blueAccent, size: 30.0), //icon
            title: Text('Informacion')), //
      ]), // bottom
    ); //fin de Scaffold
  } //fin de Widget
} //fin de clase _PaginaInicioState
