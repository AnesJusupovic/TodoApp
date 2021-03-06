import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo/core/Failures/auth_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:todo/domain/entities/user.dart';
import 'package:todo/domain/repositories/auth_repository.dart';
import 'package:todo/infrastructure/extensions/firebase_user_mapper.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth firebaseAuth;

  AuthRepositoryImpl({required this.firebaseAuth});

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(EmailAlreadyInUseFailure());
      } else {
        return left(ServerFailure());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "wrong-password" || e.code == "user-not-found") {
        return left(EmailAlreadyInUseFailure());
      } else {
        return left(ServerFailure());
      }
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        firebaseAuth.signOut(),
      ]);

  @override
  Option<CustomeUser> getSignedInUser() =>
      optionOf(firebaseAuth.currentUser?.toDomain());
}
