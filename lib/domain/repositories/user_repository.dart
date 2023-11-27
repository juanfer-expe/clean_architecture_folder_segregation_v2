import 'package:clean_architecture_folder_segregation/domain/models/user_model.dart';

abstract class UserRepository {
  Future<User> getUser();  
}