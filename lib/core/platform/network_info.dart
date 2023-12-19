import 'package:number_trivia/core/core.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;

  NetworkInfoImpl({required this.connectionChecker});

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
