sealed class Either<S, F> {
  late S success;
  late F failure;
}

class Success<S, F> extends Either<S, F> {
  Success(S value) {
    success = value;
  }

  @override
  String toString() => "Success($success)";
}

class Failure<S, F> extends Either<S, F> {
  Failure(F value) {
    failure = value;
  }

  @override
  String toString() => "Failure($failure)";
}
