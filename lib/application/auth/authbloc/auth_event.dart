part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class SignOutPressdEvent extends AuthEvent {}

class AuthCheckRequestedEvent extends AuthEvent {}
