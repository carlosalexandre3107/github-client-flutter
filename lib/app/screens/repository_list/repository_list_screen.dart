import 'package:flutter/material.dart';

class RepositoryListScreen extends StatelessWidget {
  final String linguagem = 'Dart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Repositorios do ${this.linguagem}'),
        centerTitle: true,
      ),
    );
  }
}
