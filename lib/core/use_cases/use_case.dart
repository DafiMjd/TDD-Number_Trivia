import 'package:number_trivia/core/core.dart';

abstract class UserCase<Type, Params> {
  Future<Either<FailureMdl, Type>> call(Params params);
}

class NoParams {}
