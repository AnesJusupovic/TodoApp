import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:todo/core/Failures/todo_failures.dart';
import 'package:todo/domain/entities/todo.dart';
import 'package:todo/domain/repositories/todo_repository.dart';

part 'todoform_event.dart';
part 'todoform_state.dart';

class TodoformBloc extends Bloc<TodoformEvent, TodoformState> {
  final TodoRepository todoRepository;
  TodoformBloc({required this.todoRepository})
      : super(TodoformState.initial()) {
    on<InitializeTodoDetailPage>((event, emit) {
      if (event.todo != null) {
        emit(state.copyWith(todo: event.todo, isEditing: true));
      } else {
        emit(state);
      }
    });
  }
}
