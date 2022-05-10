import 'package:flutter/material.dart';

class resultscreen extends StatefulWidget {
  final double? result;
  resultscreen({Key? key, required this.result}) : super(key: key);

  @override
  State<resultscreen> createState() => _resultscreenState();
}

class _resultscreenState extends State<resultscreen> {
  String? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(200, 0, 0, 255),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Result',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.result!.toStringAsFixed(1),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              _textoutput(),
              Image.asset(image!)
            ],
          ),
        )));
  }

  Widget _textoutput() {
    String diagnostic;
    if (widget.result! <= 18.5) {
      diagnostic = "Health risk minimal , you are underweight";
      image = "assets/img/img1.jpg";
    } else if (widget.result! <= 24.9) {
      diagnostic = "Health risk minimal ,  you are normal";
      image = "assets/img/img2.jpg";
    } else if (widget.result! <= 29.9) {
      diagnostic = "Health risk increased , you are overweight";
      image = "assets/img/img3.jpg";
    } else if (widget.result! <= 34.9) {
      diagnostic = "Health risk high , your are obese";
      image = "assets/img/img3.jpg";
    } else if (widget.result! <= 39.9) {
      diagnostic = "Health risk very high ,  you are severly obese";
      image = "assets/img/img3.jpg";
    } else {
      diagnostic = "Health risk extremely high , you are Morbidly obese ";
      image = "assets/img/img3.jpg";
    }
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
      child: Text(diagnostic),
    );
  }
}
