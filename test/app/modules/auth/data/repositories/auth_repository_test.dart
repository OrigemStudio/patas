import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';
import 'package:patas/patas_exports.dart';
import '../../../../../mocks.dart';

void main() {
  late IAuthDatasouce _datasource;
  late IAuthRepository _repository;
  setUp(() {
    _datasource = AuthDatasouceMock();
    _repository = AuthRepositoryImpl(_datasource);
  });

  group('AuthRepository Tests - ', () {
    group('auth | ', () {
      test('when request, should return a AuthorizeEntity', () async {
        when(() => _datasource.call(Mocks.authModel))
            .thenAnswer((_) async => Mocks.authorizeModel);
        var result = await _repository.call(entity: Mocks.authModel.toEntity);
        expect(result.fold(id, id), isA<AuthorizeEntity>());
      });

      test('when has error, should throw ErrorResponse', () async {
        when(() => _datasource.call(Mocks.authModel))
            .thenThrow(ErrorResponse(message: '', statusCode: ''));
        var result = await _repository.call(entity: Mocks.authModel.toEntity);
        expect(result.fold(id, id), isA<ErrorResponse>());
      });
    });
  });
}
