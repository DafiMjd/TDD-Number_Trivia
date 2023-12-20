import 'package:number_trivia/core/core.dart';

abstract class FailureMdl extends Equatable {
  final List<dynamic> properties;
  final String message;

  const FailureMdl({
    this.properties = const [],
    this.message = '',
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [properties, message];
}

class ServerFailure extends FailureMdl {
  const ServerFailure() : super(message: CACHE_FAILURE_MESSAGE);
}

class CacheFailure extends FailureMdl {
  const CacheFailure() : super(message: SERVER_FAILURE_MESSAGE);
}

class InvalidInputFailureMdl extends FailureMdl {
  const InvalidInputFailureMdl()
      : super(message: INVALID_INPUT_FAILURE_MESSAGE);
}
