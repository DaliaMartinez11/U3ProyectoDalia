import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ui.Size logicalSize = MediaQuery.of(context).size;
    final double _height = logicalSize.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.limeAccent[400],
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Container(
                  child: Text(
                    'Iniciar sesion.',
                    style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 45.0, color: Colors.black),
                  ),
                ), //Container
                SizedBox(height: 20),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(2.0),
                      child: Stack(
                        children: <Widget>[
                          Align(
                              child: new Image(
                            width: 300.0,
                            height: 200.0,
                            image: new AssetImage('assets/images/cfe2.jpg'),
                          ) //Fin Image
                              ) //Fin Align
                        ], //Fin Widget[]
                      ), //Fin Stack
                    ), //Fin Container
                    SizedBox(height: 40),
                    TextField(decoration: InputDecoration(hintText: "Email", icon: Icon(Icons.email)) //Fin Inpit Decoration
                        ), //Fin TextField
                    SizedBox(
                      height: 40,
                    ),
                    TextField(decoration: InputDecoration(hintText: "Password", icon: Icon(Icons.vpn_key)) //Fin Inpit Decoration
                        ), //Fin TextField 2
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Flexible(
                          child: RaisedButton(
                            color: Colors.indigoAccent[700],
                            shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {
                              ;
                            },
                            child: SizedBox(
                              child: Center(
                                child: Text(
                                  "Iniciar ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 25, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        new Flexible(
                          child: RaisedButton(
                            color: Colors.red[800],
                            shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {
                              ;
                            },
                            child: SizedBox(
                              child: Center(
                                child: Text(
                                  "cancelar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 25, color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ], //fin de widget
                    ), //fin de row
                  ], //Fin Widget[]
                ), //Fin Column
              ], //Fin Widget []
            ), //Fin Column
          ), //Fin SingleChildScrollView
        ), //Fin Container
      ), //Fin SafeArea
    ); //Fin Scaffold
  } // widget
} // first page
