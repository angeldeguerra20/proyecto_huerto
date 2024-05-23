// ignore_for_file: prefer_final_fields, prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Editor de Comentarios',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CommentEditor(),
    );
  }
}

class CommentEditor extends StatefulWidget {
  @override
  _CommentEditorState createState() => _CommentEditorState();
}

class _CommentEditorState extends State<CommentEditor> {
  TextEditingController _controller = TextEditingController();
  List<String> _comments = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editor de Comentarios'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Escribe tu comentario...',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
              onSubmitted: (value) {
                setState(() {
                  _comments.add(value);
                  _controller.clear();
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _comments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_comments[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
