import '../../../../../../patas_exports.dart';

class RegisterModel extends RegisterEntity {
  const RegisterModel(
      {required String password,
      required String email,
      required String name,
      required List<String> phones,
      required AddressEntity address})
      : super(
            password: password,
            name: name,
            email: email,
            phones: phones,
            address: address);

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
      password: json['password'],
      name: json['name'],
      email: json['email'],
      phones: List<String>.from(
          (json['phones'] as List).map((phone) => phone).toList()),
      address: json['address'] != null
          ? AddressModel.fromJson(json['address'])
          : const AddressEntity());

  @override
  List<Object?> get props => [password, name, email, phones];

  @override
  bool? get stringify => true;
}

extension RegisterEntityToModel on RegisterEntity {
  RegisterModel get toModel => RegisterModel(
      password: password ?? '',
      name: name ?? '',
      email: email ?? '',
      phones: phones ?? [],
      address: const AddressEntity());
}

extension RegisterModelToEntity on RegisterModel {
  RegisterEntity get toEntity => RegisterEntity(
      password: password,
      name: name,
      email: email,
      phones: phones,
      address: address);
}
