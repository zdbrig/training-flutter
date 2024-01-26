
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoadAndPostExample extends StatefulWidget {
  @override
  _LoadAndPostExampleState createState() => _LoadAndPostExampleState();
}

class _LoadAndPostExampleState extends State<LoadAndPostExample> {
  String fetchedData = '';
  TextEditingController inputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    try {
      final response = await http.get(Uri.parse('https://example.com/data'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          fetchedData = data['message'];
        });
      } else {
        print('Failed to load data');
      }
    } catch (e) {
      print(e);
    }
  }

  void handleSubmit() async {
    try {
      final response = await http.post(
        Uri.parse('https://example.com/post'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'inputText': inputController.text}),
      );
      if (response.statusCode == 200) {
        print('Success: ${response.body}');
      } else {
        print('Failed to post data');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Load and Post'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Fetched Data: $fetchedData'),
            TextField(
              controller: inputController,
              decoration: InputDecoration(hintText: 'Enter text'),
            ),
            ElevatedButton(
              onPressed: handleSubmit,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
