import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputAnggota = TextEditingController ();
  TextEditingController inputSandi = TextEditingController ();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
    appBar : AppBar(title: Text("SARANKU")),
    backgroundColor: Color.fromARGB(255, 179, 38, 30),
    body: Column(
      children: [
        Center(
          child: Container(
           width: 300,
           color: Color.fromARGB(197, 220, 155, 155),
          )
        )
      ],
    ),
    );
  }
}

