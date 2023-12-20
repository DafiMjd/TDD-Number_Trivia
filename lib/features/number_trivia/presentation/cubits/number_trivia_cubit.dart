import 'package:number_trivia/core/core.dart';
import 'package:number_trivia/features/number_trivia/domain/domain.dart';

part 'number_trivia_state.dart';

class NumberTriviaCubit extends Cubit<NumberTriviaState> {
  NumberTriviaCubit({
    required this.inputConverter,
    required this.getConcreteNumberTriviaUc,
    required this.getRandomNumberTriviaUc,
  }) : super(NumberTriviaState(numberTriviaLoadData: ViewData.initial()));

  final InputConverter inputConverter;
  final GetConcreteNumberTriviaUc getConcreteNumberTriviaUc;
  final GetRandomNumberTriviaUc getRandomNumberTriviaUc;

  Future<void> getConcreteNumberTrivia(String str) async {
    final inputEither = inputConverter.stringToUnsignedInteger(str);

    inputEither.fold((left) {
      const error = InvalidInputFailureMdl();
      emit(
        state.copyWith(
          numberTriviaLoadData: ViewData.error(
            message: '',
            data: const Left(error),
          ),
        ),
      );
    }, (integer) async {
      emit(state.copyWith(numberTriviaLoadData: ViewData.loading()));
      final failureOrTrivia = await getConcreteNumberTriviaUc(integer);

      failureOrTrivia.fold(
        (left) {
          emit(
            state.copyWith(
              numberTriviaLoadData: ViewData.error(
                data: Left(left),
                message: left.message,
              ),
            ),
          );
        },
        (trivia) => emit(
          state.copyWith(
              numberTriviaLoadData: ViewData.loaded(data: Right(trivia))),
        ),
      );
    });
  }

  Future<void> getRandomNumberTrivia() async {
    emit(state.copyWith(numberTriviaLoadData: ViewData.loading()));
    final failureOrTrivia = await getRandomNumberTriviaUc(NoParams());

    failureOrTrivia.fold(
      (left) {
        emit(
          state.copyWith(
            numberTriviaLoadData: ViewData.error(
              data: Left(left),
              message: left.message,
            ),
          ),
        );
      },
      (trivia) => emit(
        state.copyWith(
            numberTriviaLoadData: ViewData.loaded(data: Right(trivia))),
      ),
    );
  }
}
