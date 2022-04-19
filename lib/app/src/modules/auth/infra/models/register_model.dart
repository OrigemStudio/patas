import '../../../../../../patas_exports.dart';

class RegisterModel extends RegisterEntity {
  const RegisterModel(
      {required String password,
      required String email,
      required String name,
      required String phone,
      required AddressEntity address})
      : super(
            password: password,
            name: name,
            email: email,
            phone: phone,
            address: address);

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
      password: json['password'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'] != null
          ? AddressModel.fromJson(json['address'])
          : const AddressEntity());

  static Map<String, dynamic> toJson(RegisterEntity entity) => {
        'password': entity.password,
        'name': entity.name,
        'email': entity.email,
        'phone': entity.phone,
        'address': AddressModel.toJson(entity.address ?? const AddressEntity())
      };

  @override
  List<Object?> get props => [password, name, email, phone];

  @override
  bool? get stringify => true;
}

extension RegisterEntityToModel on RegisterEntity {
  RegisterModel get toModel => RegisterModel(
      password: password ?? '',
      name: name ?? '',
      email: email ?? '',
      phone: phone ?? '',
      address: const AddressEntity());
}

extension RegisterModelToEntity on RegisterModel {
  RegisterEntity get toEntity => RegisterEntity(
      password: password,
      name: name,
      email: email,
      phone: phone,
      address: address);
}
