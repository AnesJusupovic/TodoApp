import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/domain/entities/todo.dart';

class ProgressBar extends StatelessWidget {
  final List<Todo> todos;
  const ProgressBar({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
