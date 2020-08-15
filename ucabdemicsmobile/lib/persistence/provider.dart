import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:ucabdemicsmobile/models/subject_response_model.dart';
import 'package:inject/inject.dart';

@provide
@singleton
class ApiProvider {
  Client client = Client();
  String baseUrl = 'http://ucabdemics.me/api/asignaturas';

  Future<SubjectResponse> fetchSubjects() async{
    final response = await client.get("$baseUrl");
    print(response.body.toString());

    if (response.statusCode == 200) {
      return SubjectResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather');
    }
  }
}