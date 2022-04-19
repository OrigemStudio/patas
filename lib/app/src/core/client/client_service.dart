import 'package:hasura_connect/hasura_connect.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patas/patas_exports.dart';

class IClientService {
  late HasuraConnect connect;
}

class HasuraService extends IClientService {
  final IConfigsService _configs;
  final FirebaseAuth _auth;
  final ICacheStorageService _storage;

  HasuraService(this._configs, this._auth, this._storage);

  @override
  HasuraConnect get connect => HasuraConnect(
        _configs.baseUrl,
        interceptors: [
          TokenInterceptor(_auth),
          LogInterceptor(),
          CacheInterceptor(_storage),
        ],
        headers: {},
      );
}

class TokenInterceptor extends Interceptor {
  final FirebaseAuth auth;
  TokenInterceptor(this.auth);

  @override
  Future<void> onConnected(HasuraConnect connect) async {}

  @override
  Future<void> onDisconnected() async {}

  @override
  Future onError(HasuraError request, HasuraConnect connect) async {
    return request;
  }

  @override
  Future<Request?> onRequest(Request request, HasuraConnect connect) async {
    var user = auth.currentUser;
    var token = await user?.getIdToken(true);
    if (token != null) {
      try {
        request.headers["Authorization"] = "Bearer $token";
        return request;
      } catch (e) {
        rethrow;
      }
    } else {
      Modular.to.pushReplacementNamed(AppRoutes.auth);
      return null;
    }
  }

  @override
  Future onResponse(Response data, HasuraConnect connect) async {
    return data;
  }

  @override
  Future<void> onSubscription(Request request, Snapshot snapshot) async {}

  @override
  Future<void> onTryAgain(HasuraConnect connect) async {}
}
