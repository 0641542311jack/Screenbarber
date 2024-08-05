import 'package:flutter/material.dart';

class Hair extends StatefulWidget {
  String service;
 Hair({required this.service});

  @override
  State<Hair> createState() => _HairState();
}

class _HairState extends State<Hair> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("แนะนำทรงผม"),),
      backgroundColor: Colors.brown,
    );
  }
}