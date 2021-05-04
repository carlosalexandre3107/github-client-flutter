import 'dart:convert';

class Project {
  final String ownerLogin;
  final String ownerAvatarUrl;
  final String name;
  final String description;
  final int stargazersCount;
  final int forksCount;
  final int openIssuesCount;
  Project({
    this.ownerLogin,
    this.ownerAvatarUrl,
    this.name,
    this.description,
    this.stargazersCount,
    this.forksCount,
    this.openIssuesCount,
  });

  Map<String, dynamic> toMap() {
    return {
      'ownerLogin': ownerLogin,
      'ownerAvatarUrl': ownerAvatarUrl,
      'name': name,
      'description': description,
      'stargazersCount': stargazersCount,
      'forksCount': forksCount,
      'openIssuesCount': openIssuesCount,
    };
  }

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      ownerLogin: map['ownerLogin'],
      ownerAvatarUrl: map['ownerAvatarUrl'],
      name: map['name'],
      description: map['description'],
      stargazersCount: map['stargazersCount'],
      forksCount: map['forksCount'],
      openIssuesCount: map['openIssuesCount'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Project.fromJson(String source) =>
      Project.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Project(ownerLogin: $ownerLogin, ownerAvatarUrl: $ownerAvatarUrl, name: $name, description: $description, stargazersCount: $stargazersCount, forksCount: $forksCount, openIssuesCount: $openIssuesCount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Project &&
        other.ownerLogin == ownerLogin &&
        other.ownerAvatarUrl == ownerAvatarUrl &&
        other.name == name &&
        other.description == description &&
        other.stargazersCount == stargazersCount &&
        other.forksCount == forksCount &&
        other.openIssuesCount == openIssuesCount;
  }

  @override
  int get hashCode {
    return ownerLogin.hashCode ^
        ownerAvatarUrl.hashCode ^
        name.hashCode ^
        description.hashCode ^
        stargazersCount.hashCode ^
        forksCount.hashCode ^
        openIssuesCount.hashCode;
  }
}
