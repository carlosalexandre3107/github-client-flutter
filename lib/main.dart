import 'dart:convert';

import 'package:flutter/material.dart';

import 'app/models/repository/repository_model.dart';
import 'app/screens/pull_request_details/pull_request_details_screen.dart';
import 'app/screens/pull_request_list/pull_request_list_screen.dart';
import 'app/screens/repository_list/repository_list_screen.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(GithubClientApp());
}

class GithubClientApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    this.teste();
    return MaterialApp(
      title: 'Github client in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => RepositoryListScreen(),
        '/pull-requests': (context) => PullRequestListScreen(),
        '/pull-request-details': (context) => PullRequestDetailsScreen(),
      },
    );
  }

  void teste() async {
    // final response =
    //     await http.get(Uri.https('jsonplaceholder.typicode.com', 'albums/1'));
    // print(jsonDecode(response.body));
    final response = GitHubRepositoryModel.fetchAlbum(language: 'flutter');
    print(response);
  }
}
