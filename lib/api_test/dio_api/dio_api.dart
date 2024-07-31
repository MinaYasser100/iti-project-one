import 'package:dio/dio.dart';
import 'package:one_project_iti/api_test/test_model/test_model.dart';

class DioApi {
  static final dio = Dio();
  static List<User> users = [];
  static Future<void> getHttp() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/users');
    var data = await response.data as List;
    users = data.map((e) => User.fromJson(e as Map<String, dynamic>)).toList();
    print(users);
  }
}
