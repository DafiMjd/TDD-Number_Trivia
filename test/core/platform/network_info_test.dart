import 'package:number_trivia/core/core.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';

@GenerateNiceMocks([
  MockSpec<InternetConnectionChecker>(as: #MockInternetConnectionChecker),
])
import 'network_info_test.mocks.dart';

void main() {
  var mockInternetConnectionChecker = MockInternetConnectionChecker();
  var networkInfo = NetworkInfoImpl(connectionChecker: mockInternetConnectionChecker);

  setUp(() {
    mockInternetConnectionChecker = MockInternetConnectionChecker();
    networkInfo = NetworkInfoImpl(connectionChecker: mockInternetConnectionChecker);
  });

  group('isConnected', () {
    test('should forward the call to InternetConnectionChecker.hasConnection',
        () async {
      // arrange

      when(mockInternetConnectionChecker.hasConnection)
          .thenAnswer((_) async => true);
      // act
      // NOTICE: We're NOT awaiting the result
      final result = await networkInfo.isConnected;
      // assert
      verify(mockInternetConnectionChecker.hasConnection);

      expect(result, true);
    });
  });
}
