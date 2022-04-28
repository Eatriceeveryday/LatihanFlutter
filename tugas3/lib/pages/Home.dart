import 'package:flutter/material.dart';
import 'package:tugas3/pages/Daftar.dart';
import 'package:tugas3/pages/Dash.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
                  'Login',
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Dashboard();
                    }));
                  },
                  child: Text('Login'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Belum Punya Akun?'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Daftar();
                          }));
                        },
                        child: Text('Daftar'))
                  ],
                )
              ]),
            )));
  }
}
