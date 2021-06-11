import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

const List<Color> orangeGradients = [
  Color(0xFFFF9844),
  Color(0xFFFE8853),
  Color(0xFFFD7267),
]; //Fin const
const List<Color> purpleGradients = [
  Color(0xFF7700FF),
  Color(0xFF8351D4),
  Color(0xFF764C8A),
]; //Fin const
const List<Color> blueGradients = [
  Color(0xFF0F13F8),
  Color(0xFF5570C7),
  Color(0xFF5E8EF7),
]; //Fin const

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 300, minWidth: 200),
      child: SingleChildScrollView(
          child: Column(children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        
        Container(
            height: 100,
            width: 250,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              gradient: LinearGradient(colors: orangeGradients),
            ), //ShapeDecoration
            child: Container(
              padding: EdgeInsets.only(top: 25.0, bottom: 16),
              child: Text('C F E', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.bold) //Fin TextStyle
                  ),
            ) //Fin Container
            ), //Fin Container2
        SizedBox(
          height: 20.0,
        ),
        Container(
          height: 50,
          width: 175,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            gradient: LinearGradient(colors: blueGradients),
          ), //ShapeDecoration

          child: Text('Comienza a informarte!', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold) //Fin TextStyle
              ),
        ), //Fin Container 3
        SizedBox(
          height: 20.0,
        ),
        InkWell(
          onTap: () {
            print('Cargando informacion....');
          },
          child: Container(
              padding: EdgeInsets.all(50),
              

              child: Image.asset("assets/images/lupa.jpg")), //Fin Container 4
        ),
      ] //Fin Widget[]
              ) //Fin Column
          ), //Fin SingleChildScrollView
    ) //Fin ConstrainedBox
        ); //Fin Material
  } // widget
} //Fin clase _ThirdPage
