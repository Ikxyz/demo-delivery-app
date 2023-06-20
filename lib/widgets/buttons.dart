import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 450,
      height: 55,
      decoration: BoxDecoration(
        color: const Color(0xffe2803a),
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
        BoxShadow(
          offset: Offset(0, 4),
          spreadRadius: 0,
          blurRadius: 4,
          color: Color.fromRGBO(0, 0, 0, 0),
        )
      ],
      ),
      alignment: Alignment.center,
      child: Text('Confirm',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w500
      ),
      ),
    );
  }
}