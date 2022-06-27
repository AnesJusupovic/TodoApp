// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'todoform_bloc.dart';

class TodoformState {
  final Todo todo;
  final bool showErrorMessage;
  final bool isSaving;
  final bool isEditing;
  final Option<Either<TodoFailure, Unit>> failureOrSuccess;

  TodoformState(
      {required this.todo,
      required this.showErrorMessage,
      required this.isSaving,
      required this.isEditing,
      required this.failureOrSuccess});

  factory TodoformState.initial() => TodoformState(
      todo: Todo.empty(),
      showErrorMessage: false,
      isSaving: false,
      isEditing: false,
      failureOrSuccess: none());

  TodoformState copyWith({
    Todo? todo,
    bool? showErrorMessage,
    bool? isSaving,
    bool? isEditing,
    Option<Either<TodoFailure, Unit>>? failureOrSuccess,
  }) {
    return TodoformState(
      todo: todo ?? this.todo,
      showErrorMessage: showErrorMessage ?? this.showErrorMessage,
      isSaving: isSaving ?? this.isSaving,
      isEditing: isEditing ?? this.isEditing,
      failureOrSuccess: failureOrSuccess ?? this.failureOrSuccess,
    );
  }
}
