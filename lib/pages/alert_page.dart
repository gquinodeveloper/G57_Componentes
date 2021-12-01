import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _mostrarAlerta(context);
          },
          child: Container(
            width: 150.0,
            height: 60.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                colors: [
                  Colors.pink,
                  Colors.red,
                ],
              ),
            ),
            child: Text(
              "Show Alert",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        /* child: TextButton(
          onPressed: () {
            _mostrarAlerta(context);
          },
          child: Text("Show Alert"),
        ), */
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      //barrierColor: Colors.white54,
      builder: (context) {
        return AlertDialog(
          title: Text("Title"),
          content: FlutterLogo(size: 100.0),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Ok"),
            ),
          ],
        );
      },
    );
  }
}
