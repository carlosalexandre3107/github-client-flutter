import 'package:flutter/material.dart';

import 'app/screens/repository_list/repository_list_screen.dart';

void main() {
  runApp(GithubClientApp());
}

class GithubClientApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github client in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RepositoryListScreen(),
    );
  }
}
