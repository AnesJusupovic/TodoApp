part of 'todoform_bloc.dart';

@immutable
abstract class TodoformEvent {}

class InitializeTodoDetailPage extends TodoformEvent {
  final Todo? todo;
  InitializeTodoDetailPage({required this.todo});
}
