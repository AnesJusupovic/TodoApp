import 'package:dartz/dartz.dart';
import 'package:todo/core/Failures/auth_failures.dart';
import 'package:todo/domain/entities/user.dart';

abstract class AuthRepository {
  Future<Either<AuthFailure, Unit>>? registerWithEmailAndPassword(
      {required String email, required String password});
  Future<Either<AuthFailure, Unit>>? signInWithWithEmailAndPassword(
      {required String email, required String password});

  Future<void> signOut();

  Option<CustomeUser> getSignedInUser();
}
