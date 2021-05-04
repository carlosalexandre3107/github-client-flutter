import 'package:github_client_flutter/domain/entities/project.dart';
import 'package:github_client_flutter/domain/repositories/project_repository.dart';
import 'package:github_client_flutter/domain/usecases/get_projects_usecase.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockProjectRepository extends Mock implements ProjectRepository {}

void main() {
  MockProjectRepository repository;
  GetProjectsUseCase useCase;

  setUp(() {
    repository = MockProjectRepository();
    useCase = GetProjectsUseCase(repository);
  });

  final mockProjectList = [Project()];

  test('should return an entity list project', () async {
    final mockLanguage = 'Dart';
    when(repository.getProjects(any)).thenAnswer((_) async => mockProjectList);
    final result = await useCase.run(mockLanguage);
    expect(result, mockProjectList);
    verify(repository.getProjects(mockLanguage));
    verifyNoMoreInteractions(repository);
  });
}
