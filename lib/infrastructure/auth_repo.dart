import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:money_bag/domain/failure.dart';
import 'package:money_bag/domain/i_auth_repo.dart';
import 'package:money_bag/domain/user_profile.dart';

class AuthRepo extends IAuthRepo {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  @override
  TaskOption<UserProfile> checkAuth() => TaskOption.tryCatch(() async {
        final user = auth.currentUser;
        if (user != null) {
          final UserProfile profile = await db
              .collection('user')
              .doc(user.uid)
              .get()
              .then((value) => UserProfile.fromMap(value.data()!));
          return profile;
        } else {
          throw 'not logged in';
        }
      });

  @override
  TaskEither<Failure, UserProfile> login(LoginBody body) =>
      TaskEither.tryCatch(() async {
        final cred = await auth.signInWithEmailAndPassword(
            email: body.email, password: body.password);

        if (cred.user != null) {
          final UserProfile profile = await db
              .collection('user')
              .doc(cred.user!.uid)
              .get()
              .then((value) => UserProfile.fromMap(value.data()!));
          return profile;
        } else {
          throw 'not logged in';
        }
      }, (error, _) => Failure(error: error.toString(), context: 'login'));

  @override
  TaskEither<Failure, UserProfile> registration(SignupBody body) =>
      TaskEither.tryCatch(() async {
        final cred = await auth.createUserWithEmailAndPassword(
            email: body.email, password: body.password);

        if (cred.user != null) {
          final UserProfile profile = UserProfile(
              email: body.email, name: body.name, id: cred.user!.uid);

          await db.collection('user').doc(cred.user!.uid).set(profile.toMap());
          return profile;
        } else {
          throw 'not logged in';
        }
      }, (error, _) => Failure(error: error.toString(), context: 'signup'));
}
