part of 'observer_bloc.dart';

@immutable
abstract class ObserverEvent {}

class ObserverAllEvent extends ObserverEvent {}

class TodosUpdatedEvent extends ObserverEvent {
  final Either<TodoFailure, List<Todo>> failureOrTodos;
  TodosUpdatedEvent({required this.failureOrTodos});
}
