// coverage:ignore-file
import 'package:localstorage/localstorage.dart';
import '../../../../patas_exports.dart';

abstract class IStorageService {
  Future<void> clear();
  Future<String> get({required String key});
  Future<void> put({required String key, required String value});
  Future<void> setToken({required String token});
  Future<void> setRefreshToken({required String refreshToken});
  Future<void> setEmail({required String email});
  Future<void> setPassword({required String password});
  Future<bool> containsKey(String key);
  String? getToken();
  String? getRefreshToken();
  String? getRegistration();
  String? getPassword();
}

class StorageService implements IStorageService {
  final String? storageKey;
  final encrypt = Encrypt();
  late LocalStorage _storage;

  StorageService({this.storageKey}) {
    _storage = LocalStorage(storageKey ?? 'PATAS');
  }

  @override
  Future<void> clear() async => await _storage.clear();

  @override
  Future<String> get({required String key}) async => await _storage.getItem(key);

  @override
  Future<void> put({required String key, required String value}) async =>
      await _storage.setItem(key, value);

  @override
  String? getRefreshToken() => _storage.getItem('refresh_token');

  @override
  String? getToken() => _storage.getItem('token');

  @override
  Future<void> setRefreshToken({required String refreshToken}) async =>
      await _storage.setItem('refresh_token', refreshToken);

  @override
  Future<void> setToken({required String token}) async =>
      await _storage.setItem('token', token);

  @override
  String? getPassword() {
    final valueStorage = _storage.getItem('password');
    final encryptData = encrypt.from(valueStorage);
    return encryptData;
  }

  @override
  String? getRegistration() {
    final valueStorage = _storage.getItem('email');
    final encryptData = encrypt.from(valueStorage);
    return encryptData;
  }

  @override
  Future<void> setPassword({required String password}) async =>
      await _storage.setItem('password', password);

  @override
  Future<void> setEmail({required String email}) async =>
      await _storage.setItem('email', email);

  @override
  Future<bool> containsKey(String key) async => _storage.getItem(key) != null;
}
