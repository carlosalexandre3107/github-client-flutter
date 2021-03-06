import 'package:flutter/material.dart';
import 'package:github_client_flutter/app/screens/repository_list/widgets/card_widget/card_widget.dart';

class RepositoryListScreen extends StatelessWidget {
  final String linguagem = 'Dart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Repositorios do ${this.linguagem}'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            CardRepositoryWidget(),
            CardRepositoryWidget(),
            CardRepositoryWidget(),
            CardRepositoryWidget(),
            CardRepositoryWidget(),
            CardRepositoryWidget(),
            CardRepositoryWidget(),
            CardRepositoryWidget(),
          ],
        ),
      ),
    );
  }
}
