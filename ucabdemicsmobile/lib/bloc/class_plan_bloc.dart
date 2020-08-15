import 'package:rxdart/rxdart.dart';
import 'package:ucabdemicsmobile/models/subject_response_model.dart';
import 'package:ucabdemicsmobile/persistence/repository.dart';
import 'package:inject/inject.dart';

@provide
class ClassPlanBloc{
  Repository _repository = Repository();

  final _subjectFetcher = PublishSubject<SubjectResponse>();
  Stream<SubjectResponse> get subject => _subjectFetcher.stream;

  fetchSubjects() async {
    SubjectResponse subjectResponse = await _repository.fetchSubjects();
    _subjectFetcher.sink.add(subjectResponse);
  }


  dispose(){
    _subjectFetcher.close();
  }
}