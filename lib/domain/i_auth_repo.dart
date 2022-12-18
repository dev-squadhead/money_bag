import 'package:fpdart/fpdart.dart';
import 'package:money_bag/domain/failure.dart';
import 'package:money_bag/domain/user_profile.dart';

abstract class IAuthRepo {
  TaskOption<UserProfile> checkAuth();
  TaskEither<Failure, UserProfile> login(LoginBody body);
  TaskEither<Failure, UserProfile> registration(SignupBody body);
}
