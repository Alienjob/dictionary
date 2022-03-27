import 'package:dictionary/core/data/network/network_info.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockDataConnectionChecker extends Mock
    implements InternetConnectionChecker {}

void main() {
  MockDataConnectionChecker mockDataConnectionChecker =
      MockDataConnectionChecker();
  NetworkInfoImpl networkInfoImpl =
      NetworkInfoImpl(connectionChecker: mockDataConnectionChecker);

  setUp(() {
    mockDataConnectionChecker = MockDataConnectionChecker();
    networkInfoImpl =
        NetworkInfoImpl(connectionChecker: mockDataConnectionChecker);
  });

  group('is connected', () {
    test(
      'should forward the call to DataConnectionChecker.hasConnection',
      () async {
        final tHasConnectionFuture = Future.value(true);
        // arrange
        when(() => mockDataConnectionChecker.hasConnection)
            .thenAnswer((invocation) {
          return tHasConnectionFuture;
        });
        // act
        final result = networkInfoImpl.isConnected;

        // assert
        verify(() => mockDataConnectionChecker.hasConnection);
        expect(result, tHasConnectionFuture);
      },
    );
  });
}
