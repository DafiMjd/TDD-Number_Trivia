import 'package:number_trivia/core/core.dart';

class InputConverter {
  Either<FailureMdl, int> stringToUnsignedInteger(String str) {
    final val = int.tryParse(str);
    if (val == null) {
      return Left(InvalidInputFailureMdl());
    }
    
    if (val < 0) {
      return Left(InvalidInputFailureMdl());
    }

    return Right(int.parse(str));
  }
}
