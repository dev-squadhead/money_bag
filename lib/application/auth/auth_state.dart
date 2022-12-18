import 'package:equatable/equatable.dart';
import 'package:money_bag/domain/failure.dart';
import 'package:money_bag/domain/user_profile.dart';

class AuthState extends Equatable {
  final bool loading;
  final UserProfile profile;
  final Failure failure;
  const AuthState({
    required this.loading,
    required this.profile,
    required this.failure,
  });

  AuthState copyWith({
    bool? loading,
    UserProfile? profile,
    Failure? failure,
  }) {
    return AuthState(
      loading: loading ?? this.loading,
      profile: profile ?? this.profile,
      failure: failure ?? this.failure,
    );
  }

  factory AuthState.init() => AuthState(
      loading: false, profile: UserProfile.empty(), failure: Failure.none());

  @override
  String toString() =>
      'AuthState(loading: $loading, profile: $profile, failur: $failure)';

  @override
  List<Object> get props => [loading, profile, failure];
}
