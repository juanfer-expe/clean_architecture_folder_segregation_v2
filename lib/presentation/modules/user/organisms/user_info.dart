import 'package:clean_architecture_folder_segregation/domain/models/user_model.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final Future<User> user;
  const UserInfo({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      child: FutureBuilder<User>(
        future: user,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            User userInfo = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(16),
              child: ListView(
                children: [
                  Text(
                    userInfo.name!,
                  ),
                  Text(
                    userInfo.lastName!,
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.hasError}');
          }
          return const Center(
            child: SizedBox(
              width: 20, height: 20,
            ),
          );
        },
      ),
    );
  }
}