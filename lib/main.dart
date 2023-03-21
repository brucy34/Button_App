import 'package:button_app/extentions.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: ColorButtons(),
    );
  }
}

class ColorButtons extends StatelessWidget {
  final List<String> colors = [
    '#067000', '#4500FF', '#00FF00','#FF0000',
    '#00EE87',  '#FF00FF', '#FFFF00', '#FFAAFF',
    '#800000', '#808000', '#008000', '#008080',
    '#0FF080', '#800080', '#808080', '#C1C1C1',
    '#FFA500', '#FFC0CB', '#FFD700', '#C0C1C0',
    '#FF0570', '#FF00FF', '#FFCC00', '#45FFFF'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: colors.take(8).map((color) {

              return Container(
                width:100,
                height:100,
                  padding: EdgeInsets.only(bottom: 20),
              child:ElevatedButton(
                child: Text(color),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(color.toColor()),
                ),
              )
              );
            }).toList(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: colors.skip(8).take(8).map((color) {
              return Container(
                width: 100,
                height: 100,
                  padding: EdgeInsets.only(bottom: 20),
                child:ElevatedButton(
                      child: Text(color),
                      onPressed: () {},
                      style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(color.toColor())
                ),
                )
              );
            }).toList(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: colors.skip(16).map((color) {
              return Container(
                width: 100,
                height: 100,
               padding: EdgeInsets.only(bottom: 20),
               child:ElevatedButton(
                child: Text(color),
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(color.toColor()),
                    ),
               )
              );
            }).toList(),
          ),
        ],
      ),
      )
    );
  }
}


