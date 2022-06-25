import 'package:uuid/uuid.dart';

class UniqueID {
  const UniqueID._(this.value);

  final String value;

  factory UniqueID() {
    return UniqueID._(Uuid().v1());
  }

  factory UniqueID.fromUniqueString(String uniqueString) {
    return UniqueID._(uniqueString);
  }
}
