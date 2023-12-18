import 'package:number_trivia/core/core.dart';

abstract class FailureMdl extends Equatable {
  final List<dynamic> properties;

  const FailureMdl({
    this.properties = const [],
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [properties];
}
