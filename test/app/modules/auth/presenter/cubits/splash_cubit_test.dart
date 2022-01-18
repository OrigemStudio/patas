import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patas/patas_exports.dart';

import '../../../../../mocks.dart';

void main() {
  late IStorageService _storage;
  late SplashCubit _splashCubit;
  setUp(() {
    _storage = StorageMock();
    _splashCubit = SplashCubit(_storage);
  });

  group('SplashCubit Tests - ', () {
    test('when request init, should return authorized', () async {
      when(() => _storage.getToken()).thenAnswer((_) => 'token');
      when(() => _storage.getRefreshToken()).thenAnswer((_) => 'refresh-token');
      await _splashCubit.init();
      expect(_splashCubit.state, SplashState.authorized);
    });

    test('when request init, should return unauthorized', () async {
      when(() => _storage.getToken()).thenAnswer((_) => null);
      when(() => _storage.getRefreshToken()).thenAnswer((_) => null);
      await _splashCubit.init();
      expect(_splashCubit.state, SplashState.unauthorized);
    });
  });
}
