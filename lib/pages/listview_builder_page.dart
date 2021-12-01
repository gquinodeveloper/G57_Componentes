import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  const ListViewBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> nombres = ["Gustavo", "Alex", "Alejandro", "Cristina"];
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewBuilder"),
      ),
      body: ListView.builder(
        itemCount: nombres.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            width: double.infinity,
            height: 100.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(15.0),
              /* borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ), */
              gradient: LinearGradient(
                colors: [
                  Colors.pink,
                  Colors.red,
                ],
              ),
            ),
            child: Text(
              "${nombres[index]}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
