import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('This is ScanPage'),
    ));
  }
}
