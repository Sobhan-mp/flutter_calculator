import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final buttonTapped;
  final color;
  final textColor;
  final String buttonText;

  CustomButton(
      {this.buttonTapped, this.color, this.textColor, this.buttonText = ""});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: buttonTapped,
        child: Padding(
            padding: const EdgeInsets.all(2),
            child: ClipRRect(
              child: Container(
                color: color,
                child: Center(
                    child: Text(
                  buttonText,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )));
  }
}
