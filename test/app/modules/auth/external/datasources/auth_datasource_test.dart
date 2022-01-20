import 'package:flutter_test/flutter_test.dart';
//import 'package:mocktail/mocktail.dart';
import 'package:patas/patas_exports.dart';
import '../../../../../mocks.dart';

void main() {
  //late IAuthDatasouce _datasource;
  late IClientService _api;
  setUp(() {
    _api = ClientMock();
    //_datasource = AuthDatasourceImpl(_api);
    //registerFallbackValue<ApiRequest>(ApiRequestFake());
  });

  group('AuthDatasource Tests - ', () {
    group('auth | ', () {
      test('when request, should return a AuthorizedModel', () async {
        /* when(() => _api.get(apiRequest: any(named: 'apiRequest')))
            .thenAnswer((_) async => AuthResponses.userResponse);
        var result = await _datasource.call(Mocks.authModel);
        expect(result, isA<AuthorizedModel>());
      });

      test('when status is not 200, should throw ErrorResponse', () async {
        when(() => _api.get(apiRequest: any(named: 'apiRequest'))).thenAnswer(
          (_) async => const ApiResponse(body: null, statusCode: 400),
        );
        expect(
            _datasource.call(Mocks.authModel), throwsA(isA<ErrorResponse>()));*/
      });
    });
  });
}
