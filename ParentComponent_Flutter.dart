
import 'package:flutter/material.dart';
import 'ChildComponent.dart';

class ParentComponent extends StatefulWidget {
  @override
  _ParentComponentState createState() => _ParentComponentState();
}

class _ParentComponentState extends State<ParentComponent> {
  String message = 'Initial message';

  void updateMessage() {
    setState(() {
      message = 'Updated message from parent';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: updateMessage,
          child: Text('Update Message'),
        ),
        ChildComponent(message: message),
      ],
    );
  }
}
