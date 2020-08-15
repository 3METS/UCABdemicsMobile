import 'package:ucabdemicsmobile/models/subject_response_model.dart';
import 'package:ucabdemicsmobile/persistence/provider.dart';
import 'package:inject/inject.dart';

class Repository {

  @singleton
  @provide
  ApiProvider appApiProvider = ApiProvider();
  Future<SubjectResponse> fetchSubjects() => appApiProvider.fetchSubjects();
}