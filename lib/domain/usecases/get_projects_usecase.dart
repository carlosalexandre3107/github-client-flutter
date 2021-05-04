import 'package:github_client_flutter/domain/entities/project.dart';
import 'package:github_client_flutter/domain/repositories/project_repository.dart';

class GetProjectsUseCase {
  final ProjectRepository projectRepository;

  GetProjectsUseCase(this.projectRepository);

  Future<List<Project>> run(String language) {
    return projectRepository.getProjects(language);
  }
}
