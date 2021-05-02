import 'dart:convert';
import 'package:http/http.dart' as http;

class GitHubRepositoryModel {
  final String owner_login;
  final String owner_avatar_url;
  final String name;
  final String description;
  final int stargazers_count;
  final int forks_count;
  final int open_issues_count;

  GitHubRepositoryModel({
    this.owner_login,
    this.owner_avatar_url,
    this.name,
    this.description,
    this.stargazers_count,
    this.forks_count,
    this.open_issues_count,
  });

  static Future<GitHubRepositoryModel> fetchAlbum({String language}) async {
    final response = await http.get(Uri.https(
        'api.github.com',
        '/search/repositories',
        {'q': language, 'sort': 'stars', 'order': 'desc', 'per_page': '15'}));
    if (response.statusCode == 200) {
      return GitHubRepositoryModel.fromJson(response.body);
    } else {
      // throw Exception('Failed to load GitHub repositories');
      print('Failed to load GitHub repositories with ${response.statusCode}');
    }
  }

  GitHubRepositoryModel copyWith({
    String owner_login,
    String owner_avatar_url,
    String name,
    String description,
    int stargazers_count,
    int forks_count,
    int open_issues_count,
  }) {
    return GitHubRepositoryModel(
      owner_login: owner_login ?? this.owner_login,
      owner_avatar_url: owner_avatar_url ?? this.owner_avatar_url,
      name: name ?? this.name,
      description: description ?? this.description,
      stargazers_count: stargazers_count ?? this.stargazers_count,
      forks_count: forks_count ?? this.forks_count,
      open_issues_count: open_issues_count ?? this.open_issues_count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'owner_login': owner_login,
      'owner_avatar_url': owner_avatar_url,
      'name': name,
      'description': description,
      'stargazers_count': stargazers_count,
      'forks_count': forks_count,
      'open_issues_count': open_issues_count,
    };
  }

  factory GitHubRepositoryModel.fromMap(Map<String, dynamic> map) {
    return GitHubRepositoryModel(
      owner_login: map['owner'].login,
      owner_avatar_url: map['owner'].avatar_url,
      name: map['name'],
      description: map['description'],
      stargazers_count: map['stargazers_count'],
      forks_count: map['forks_count'],
      open_issues_count: map['open_issues_count'],
    );
  }

  String toJson() => json.encode(toMap());

  factory GitHubRepositoryModel.fromJson(String source) =>
      GitHubRepositoryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GitHubRepository(owner_login: $owner_login, owner_avatar_url: $owner_avatar_url, name: $name, description: $description, stargazers_count: $stargazers_count, forks_count: $forks_count, open_issues_count: $open_issues_count)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GitHubRepositoryModel &&
        other.owner_login == owner_login &&
        other.owner_avatar_url == owner_avatar_url &&
        other.name == name &&
        other.description == description &&
        other.stargazers_count == stargazers_count &&
        other.forks_count == forks_count &&
        other.open_issues_count == open_issues_count;
  }

  @override
  int get hashCode {
    return owner_login.hashCode ^
        owner_avatar_url.hashCode ^
        name.hashCode ^
        description.hashCode ^
        stargazers_count.hashCode ^
        forks_count.hashCode ^
        open_issues_count.hashCode;
  }
}
