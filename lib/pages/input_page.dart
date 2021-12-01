import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _inpuText(),
            SizedBox(height: 10.0),
            _inpuTextPassword(),
            SizedBox(height: 10.0),
            _inpuTextNumber(),
            SizedBox(height: 10.0),
            _inpuTextEmail(),
          ],
        ),
      ),
    );
  }

  Widget _inpuText() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Add name please",
        labelText: "Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        icon: Icon(Icons.person_outline),
      ),
      onChanged: (value) {
        print(value);
      },
    );
  }

  Widget _inpuTextPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "",
        labelText: "Passowrd",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        icon: Icon(Icons.lock),
        suffixIcon: Icon(Icons.remove_red_eye),
      ),
    );
  }

  Widget _inpuTextNumber() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: "",
        labelText: "Money",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        icon: Icon(Icons.monetization_on),
      ),
    );
  }

  Widget _inpuTextEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "",
        labelText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        icon: Icon(Icons.email_outlined),
      ),
    );
  }
}
