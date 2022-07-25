import '../../../../../../patas_exports.dart';

class RegisterModel extends RegisterEntity {
  const RegisterModel(
      {String? id,
      required String password,
      required String email,
      required String name,
      required String phone,
      required AddressEntity address})
      : super(
            id: id,
            password: password,
            name: name,
            email: email,
            phone: phone,
            address: address);

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
      id: json['id'],
      password: json['password'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'] != null
          ? AddressModel.fromJson(json['address'])
          : const AddressEntity());

  Map<String, dynamic> toJson() => {
        'id': id,
        'password': password,
        'name': name,
        'email': email,
        'phone': [phone].toString(),
        'address': AddressModel.toJson(address ?? const AddressEntity())
      };

  @override
  List<Object?> get props => [password, name, email, phone];

  @override
  bool? get stringify => true;
}

extension RegisterEntityToModel on RegisterEntity {
  RegisterModel get toModel => RegisterModel(
      id: id ?? '',
      password: password ?? '',
      name: name ?? '',
      email: email ?? '',
      phone: phone ?? '',
      address: const AddressEntity());
}

extension RegisterModelToEntity on RegisterModel {
  RegisterEntity get toEntity => RegisterEntity(
      id: id,
      password: password,
      name: name,
      email: email,
      phone: phone,
      address: address);
}
