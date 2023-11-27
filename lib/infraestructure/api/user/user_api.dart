import 'package:clean_architecture_folder_segregation/infraestructure/api/user/errors/user_api_error.dart';
import 'package:http/http.dart' as http;

import 'package:clean_architecture_folder_segregation/domain/models/user_model.dart';
import 'package:clean_architecture_folder_segregation/domain/repositories/user_repository.dart';

class UserApi extends UserRepository {
  @override
  Future<User> getUser() async {
    Uri url = Uri.parse('https://sample.com/user');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final user = userFromJson(response.body);
      return user!;
    } else {
      throw UserApiError();
    }
  }
}