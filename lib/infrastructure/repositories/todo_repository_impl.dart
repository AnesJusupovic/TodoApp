import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/domain/entities/todo.dart';
import 'package:todo/core/Failures/todo_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:todo/domain/repositories/todo_repository.dart';
import 'package:todo/infrastructure/extensions/firebase_helpers.dart';
import 'package:todo/infrastructure/models/todo_model.dart';

class TodoRepositoryImpl extends TodoRepository {
  final FirebaseFirestore firestore;
  TodoRepositoryImpl({required this.firestore});

  @override
  Future<Either<TodoFailure, Unit>> create(Todo todo) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<TodoFailure, Unit>> delete(Todo todo) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<TodoFailure, Unit>> update(Todo todo) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<TodoFailure, List<Todo>>> watchAll() async* {
    // TODO: implement watchAll
    final userDoc = await firestore.userDocument();
    yield* userDoc.todoCollection.snapshots().map((snapshot) =>
        right<TodoFailure, List<Todo>>(snapshot.docs
            .map((doc) => TodoModel.fromFirestore(doc).toDomain())
            .toList()));
  }
}