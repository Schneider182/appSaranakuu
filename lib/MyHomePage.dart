import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputNama = TextEditingController();

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
                  hintText: "Cari Pengaduan atau Lokasi",
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
        ],
      ),
    );
  }
}
