import 'dart:convert';

User? userFromJson(String str) => User.fromJson(json.decode(str));

class User {
  User({
    required this.name,
    required this.lastName,
  });

  final String name;
  final String lastName;

  factory User.fromJson(Map<String, dynamic> json) => User(name: json['name'], lastName: json['lastName']);
}