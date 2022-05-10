import 'package:apk/pages/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class inputscreen extends StatefulWidget {
  inputscreen({Key? key}) : super(key: key);

  @override
  State<inputscreen> createState() => _inputscreenState();
}

class _inputscreenState extends State<inputscreen> {
  TextEditingController _heightcontroller = TextEditingController();
  TextEditingController _weigthcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: SafeArea(
        child: Center(
            child: Column(
          children: [_heightField(), _weightField(), _calculateBtn(context)],
        )),
      ),
    );
  }

  Widget _heightField() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 15, 30),
      child: TextField(
          controller: _heightcontroller,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            labelText: "Height",
            border: OutlineInputBorder(),
            suffixText: " Cm",
          )),
    );
  }

  Widget _weightField() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 15, 15, 30),
      child: TextField(
          controller: _weigthcontroller,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            labelText: "Weight",
            border: OutlineInputBorder(),
            suffixText: " Kg",
          )),
    );
  }

  Widget _calculateBtn(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
      child: ElevatedButton(
        onPressed: () {
          double height = double.parse(_heightcontroller.text);
          height = height / 100;
          height = height * height;
          double result = double.parse(_weigthcontroller.text) / height;

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => resultscreen(
                        result: result,
                      ))));
        },
        child: Text("Calculate"),
      ),
    );
  }
}
