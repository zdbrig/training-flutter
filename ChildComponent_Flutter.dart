
import 'package:flutter/material.dart';

class ChildComponent extends StatelessWidget {
  final String message;

  ChildComponent({required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}
