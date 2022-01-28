import '../../../../../../patas_exports.dart';

class TutorModel extends TutorEntity {
  const TutorModel(
      {required String id,
      required String email,
      required String name,
      required List<String> phones,
      required AddressEntity address})
      : super(
            id: id, name: name, email: email, phones: phones, address: address);

  factory TutorModel.fromJson(Map<String, dynamic> json) => TutorModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phones: List<String>.from(
          (json['phones'] as List).map((phone) => phone).toList()),
      address: json['address'] != null
          ? AddressModel.fromJson(json['address'])
          : const AddressEntity());

  @override
  List<Object?> get props => [id, name, email, phones];

  @override
  bool? get stringify => true;
}

extension TutorEntityToModel on TutorEntity {
  TutorModel get toModel => TutorModel(
      id: id ?? '',
      name: name ?? '',
      email: email ?? '',
      phones: phones ?? [],
      address: const AddressEntity());
}

extension TutorModelToEntity on TutorModel {
  TutorEntity get toEntity => TutorEntity(
      id: id, name: name, email: email, phones: phones, address: address);
}
