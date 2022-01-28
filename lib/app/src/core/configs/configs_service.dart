import '../../../../patas_exports.dart';

abstract class IConfigsService {
  late String baseUrl;
}

class ConfigsService extends IConfigsService {
  final Environment env;

  ConfigsService({required this.env});

  @override
  String get baseUrl {
    switch (env) {
      case Environment.prod:
        return 'https://patas-prod.hasura.app/v1/graphql';
      case Environment.qa:
        return 'https://patas-qa.hasura.app/v1/graphql';
      case Environment.dev:
        return 'https://patas-dev.hasura.app/v1/graphql';
      default:
        return 'https://patas-dev.hasura.app/v1/graphql';
    }
  }
}
