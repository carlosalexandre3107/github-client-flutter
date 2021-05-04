import 'dart:convert';
import 'package:http/http.dart' as http;

class RepositoryModel {
  final String ownerLogin;
  final String ownerAvatarUrl;
  final String name;
  final String description;
  final int stargazersCount;
  final int forksCount;
  final int openIssuesCount;

  RepositoryModel copyWith({
    String owner_login,
    String owner_avatar_url,
    String name,
    String description,
    int stargazers_count,
    int forks_count,
    int open_issues_count,
  }) {
    return RepositoryModel(
      ownerLogin: owner_login ?? this.ownerLogin,
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
      'owner_login': ownerLogin,
      'owner_avatar_url': owner_avatar_url,
      'name': name,
      'description': description,
      'stargazers_count': stargazers_count,
      'forks_count': forks_count,
      'open_issues_count': open_issues_count,
    };
  }

  factory RepositoryModel.fromMap(Map<String, dynamic> map) {
    return RepositoryModel(
      ownerLogin: map['owner'].login,
      owner_avatar_url: map['owner'].avatar_url,
      name: map['name'],
      description: map['description'],
      stargazers_count: map['stargazers_count'],
      forks_count: map['forks_count'],
      open_issues_count: map['open_issues_count'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RepositoryModel.fromJson(String source) =>
      RepositoryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GitHubRepository(owner_login: $ownerLogin, owner_avatar_url: $owner_avatar_url, name: $name, description: $description, stargazers_count: $stargazers_count, forks_count: $forks_count, open_issues_count: $open_issues_count)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RepositoryModel &&
        other.ownerLogin == ownerLogin &&
        other.owner_avatar_url == owner_avatar_url &&
        other.name == name &&
        other.description == description &&
        other.stargazers_count == stargazers_count &&
        other.forks_count == forks_count &&
        other.open_issues_count == open_issues_count;
  }

  @override
  int get hashCode {
    return ownerLogin.hashCode ^
        owner_avatar_url.hashCode ^
        name.hashCode ^
        description.hashCode ^
        stargazers_count.hashCode ^
        forks_count.hashCode ^
        open_issues_count.hashCode;
  }
}
