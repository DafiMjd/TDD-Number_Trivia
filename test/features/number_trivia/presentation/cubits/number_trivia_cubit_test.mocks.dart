// Mocks generated by Mockito 5.4.4 from annotations
// in number_trivia/test/features/number_trivia/presentation/cubits/number_trivia_cubit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:number_trivia/core/core.dart' as _i2;
import 'package:number_trivia/features/number_trivia/presentation/cubits/number_trivia_cubit.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInputConverter_1 extends _i1.SmartFake
    implements _i2.InputConverter {
  _FakeInputConverter_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeNumberTriviaState_2 extends _i1.SmartFake
    implements _i3.NumberTriviaState {
  _FakeNumberTriviaState_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [InputConverter].
///
/// See the documentation for Mockito's code generation for more information.
class MockInputConverter extends _i1.Mock implements _i2.InputConverter {
  @override
  _i2.Either<_i2.FailureMdl, int> stringToUnsignedInteger(String? str) =>
      (super.noSuchMethod(
        Invocation.method(
          #stringToUnsignedInteger,
          [str],
        ),
        returnValue: _FakeEither_0<_i2.FailureMdl, int>(
          this,
          Invocation.method(
            #stringToUnsignedInteger,
            [str],
          ),
        ),
        returnValueForMissingStub: _FakeEither_0<_i2.FailureMdl, int>(
          this,
          Invocation.method(
            #stringToUnsignedInteger,
            [str],
          ),
        ),
      ) as _i2.Either<_i2.FailureMdl, int>);
}

/// A class which mocks [NumberTriviaCubit].
///
/// See the documentation for Mockito's code generation for more information.
class MockNumberTriviaCubit extends _i1.Mock implements _i3.NumberTriviaCubit {
  @override
  _i2.InputConverter get inputConverter => (super.noSuchMethod(
        Invocation.getter(#inputConverter),
        returnValue: _FakeInputConverter_1(
          this,
          Invocation.getter(#inputConverter),
        ),
        returnValueForMissingStub: _FakeInputConverter_1(
          this,
          Invocation.getter(#inputConverter),
        ),
      ) as _i2.InputConverter);

  @override
  _i3.NumberTriviaState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeNumberTriviaState_2(
          this,
          Invocation.getter(#state),
        ),
        returnValueForMissingStub: _FakeNumberTriviaState_2(
          this,
          Invocation.getter(#state),
        ),
      ) as _i3.NumberTriviaState);

  @override
  _i4.Stream<_i3.NumberTriviaState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i4.Stream<_i3.NumberTriviaState>.empty(),
        returnValueForMissingStub: _i4.Stream<_i3.NumberTriviaState>.empty(),
      ) as _i4.Stream<_i3.NumberTriviaState>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  _i4.Future<void> getConcreteNumberTrivia(String? str) => (super.noSuchMethod(
        Invocation.method(
          #getConcreteNumberTrivia,
          [str],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

  @override
  _i4.Future<void> getRandomNumberTrivia() => (super.noSuchMethod(
        Invocation.method(
          #getRandomNumberTrivia,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

  @override
  void emit(_i3.NumberTriviaState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onChange(_i2.Change<_i3.NumberTriviaState>? change) =>
      super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
