import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String Textpath;
  MyTab({super.key, required this.Textpath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 60,
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.transparent, width: 0.5),
        ),
        child: Text(
          Textpath,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
