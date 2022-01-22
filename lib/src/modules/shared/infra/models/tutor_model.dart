import '../../../../../patas_exports.dart';

class TutorModel extends TutorEntity {
  const TutorModel(
      {required String id,
      required String email,
      required String name,
      required String phone,
      required AddressEntity address})
      : super(id: id, name: name, email: email, phone: phone, address: address);

  factory TutorModel.fromJson(Map<String, dynamic> json) => TutorModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      address: json['address'] != null
          ? AddressModel.fromJson(json['address'])
          : const AddressEntity());

  @override
  List<Object?> get props => [id, name, email, phone];

  @override
  bool? get stringify => true;
}

extension TutorEntityToModel on TutorEntity {
  TutorModel get toModel => TutorModel(
      id: id ?? '',
      name: name ?? '',
      email: email ?? '',
      phone: phone ?? '',
      address: const AddressEntity());
}

extension TutorModelToEntity on TutorModel {
  TutorEntity get toEntity => TutorEntity(
      id: id, name: name, email: email, phone: phone, address: address);
}
