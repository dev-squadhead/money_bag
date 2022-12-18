import 'dart:convert';

import 'package:equatable/equatable.dart';

class UserProfile extends Equatable {
  final String id;
  final String email;
  final String name;
  const UserProfile({
    required this.id,
    required this.email,
    required this.name,
  });

  UserProfile copyWith({
    String? id,
    String? email,
    String? name,
  }) {
    return UserProfile(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
    };
  }

  factory UserProfile.fromMap(Map<String, dynamic> map) {
    return UserProfile(
      id: map['id'] ?? '',
      email: map['email'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserProfile.fromJson(String source) =>
      UserProfile.fromMap(json.decode(source));

  factory UserProfile.empty() => const UserProfile(id: '', email: '', name: '');

  @override
  String toString() => 'UserProfile(id: $id, email: $email, name: $name)';

  @override
  List<Object> get props => [id, email, name];
}

class LoginBody extends Equatable {
  final String email;
  final String password;
  const LoginBody({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [email, password];

  @override
  String toString() => 'LoginBody(email: $email, password: $password)';
}

class SignupBody extends Equatable {
  final String name;
  final String email;
  final String password;
  const SignupBody({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [name, email, password];

  @override
  String toString() =>
      'SignupBody(name: $name, email: $email, password: $password)';
}
