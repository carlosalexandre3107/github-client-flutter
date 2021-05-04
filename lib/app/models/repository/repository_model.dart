class RepositoryModel {
  final String ownerLogin;
  final String ownerAvatarUrl;
  final String name;
  final String description;
  final int stargazersCount;
  final int forksCount;
  final int openIssuesCount;

  RepositoryModel(
      this.ownerLogin,
      this.ownerAvatarUrl,
      this.name,
      this.description,
      this.stargazersCount,
      this.forksCount,
      this.openIssuesCount);
}
