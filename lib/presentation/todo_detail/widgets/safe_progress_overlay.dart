import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SafeInProgressOverlay extends StatelessWidget {
  final bool isSaving;
  const SafeInProgressOverlay({Key? key, required this.isSaving})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: Visibility(
        visible: isSaving,
        child: Center(
          child: CircularProgressIndicator(
              color: Theme.of(context).colorScheme.secondary),
        ),
      ),
    );
  }
}
