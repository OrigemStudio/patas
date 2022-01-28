import 'package:hasura_connect/hasura_connect.dart';
import 'package:patas/patas_exports.dart';

class IClientService {
  late HasuraConnect connect;
}

class HasuraService extends IClientService {
  final IConfigsService _configs;

  HasuraService(this._configs);

  @override
  HasuraConnect get connect => HasuraConnect(_configs.baseUrl);
}
