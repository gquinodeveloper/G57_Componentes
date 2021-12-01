import 'package:flutter/material.dart';
import 'package:g57_app_componentes/pages/alert_page.dart';
import 'package:g57_app_componentes/pages/avatars_page.dart';
import 'package:g57_app_componentes/pages/card_page.dart';
import 'package:g57_app_componentes/pages/input_page.dart';
import 'package:g57_app_componentes/pages/listview_builder_page.dart';
import 'package:g57_app_componentes/pages/listview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: ListviewPage(),
      //home: ListViewBuilderPage(),
      //home: AlertPage(),
      //home: AvatarsPage(),
      //home: CardPage(),
      home: InputPage(),
    );
  }
}
