import 'package:number_trivia/core/core.dart';

class ViewData<T> extends Equatable {
  final ViewState status;
  final T? data;
  final String message;

  const ViewData._({
    required this.status,
    this.data,
    this.message = '',
  });

  factory ViewData.loaded({T? data}) {
    return ViewData._(status: ViewState.hasData, data: data);
  }

  factory ViewData.error({
    required String? message,
    T? data,
  }) {
    return ViewData._(
      status: ViewState.error,
      data: data,
      message: '$message',
    );
  }

  factory ViewData.loading({String? message}) {
    return ViewData._(status: ViewState.loading, message: message ?? 'Loading');
  }

  factory ViewData.initial() {
    return const ViewData._(status: ViewState.initial);
  }

  factory ViewData.noData({required String message}) {
    return ViewData._(status: ViewState.noData, message: message);
  }

  bool get isLoading => status == ViewState.loading;

  bool get isInitial => status == ViewState.initial;

  bool get isError => status == ViewState.error;

  bool get isHasData => status == ViewState.hasData;

  bool get isNoData => status == ViewState.noData;

  @override
  List<Object?> get props => [status, data, message];
}

enum ViewState { initial, loading, error, hasData, noData }
