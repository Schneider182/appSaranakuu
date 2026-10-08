import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputNama = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SARANKU")),
      backgroundColor: Color(0xFFFFF7ED),

      body: Column(
        children: [
          Center(
            child: Container(
              width: 300,
              color: Color(0xFFFFFFFF),

              child: TextField(
                decoration: InputDecoration(
                  hintText: "No. Anggota/Email",
                  border: OutlineInputBorder(),
                ),
                controller: inputNama,
                onSubmitted: (values) {
                  inputNama.text = values;
                },
              ),
            ),
          ),

          Padding(padding: EdgeInsets.all(16)),
          Center(
            child: Container(
              width: 300,
              color: Color(0xFFFFFFFF),

              child: TextField(
                decoration: InputDecoration(
                  hintText: "Kata Sandi",
                  border: OutlineInputBorder(),
                ),
                controller: inputPassword,
                onSubmitted: (values) {
                  inputPassword.text = values;
                },
              ),
            ),
          ),

          Padding(padding: EdgeInsets.all(16)),
          ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              print(inputNama.text);
              print(inputPassword.text);

              Navigator.pushNamed(context, "/home");
            },
          ),
        ],
      ),
    );
  }
}
