import 'package:flutter/material.dart';

import 'modal_sheet.dart';

class ButtonClick extends StatefulWidget {
  @override
  _ButtonClickState createState() => _ButtonClickState();
}

class _ButtonClickState extends State<ButtonClick> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: GestureDetector(
            onTap: () {
              ModalWillScope();
            },
            child: Text('Disabled Button', style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
      ],
    )
        // ModalWillScope(),
        );
  }
}
