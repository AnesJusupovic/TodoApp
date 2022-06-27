import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/domain/entities/todo.dart';

class TodoDetail extends StatelessWidget {
  final Todo? todo;
  const TodoDetail({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          todo == null ? "Create a Todo" : "Edit Todo",
        ),
      ),
      body: const Placeholder(),
    );
  }
}
