import 'package:flutter/material.dart';
import 'package:tugas3/pages/Home.dart';

class Daftar extends StatefulWidget {
  const Daftar({Key? key}) : super(key: key);

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(children: [
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Daftar',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 35,
                ),
                Image.asset(
                  'assets/img/Logo.png',
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nama',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Daftar'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sudah punya akun'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Homescreen();
                          }));
                        },
                        child: Text('Login'))
                  ],
                )
              ]),
            )));
  }
}
