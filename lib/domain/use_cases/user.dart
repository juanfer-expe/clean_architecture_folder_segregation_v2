
import 'package:clean_architecture_folder_segregation/domain/models/user_model.dart';
import 'package:clean_architecture_folder_segregation/domain/repositories/user_repository.dart';

class UserUseCase {
  final UserRepository userRepository;
  UserUseCase(this.userRepository);
  Future<User> getUser() => userRepository.getUser();
}