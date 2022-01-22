import '../../../../../patas_exports.dart';

class PetModel extends PetEntity {
  const PetModel(
      {required String id,
      required String name,
      required String sex,
      required String birthDate,
      required String breed,
      required String fur,
      required List<String> photos,
      required TutorEntity tutor})
      : super(id: id, name: name, birthDate: birthDate, breed: breed);

  factory PetModel.fromJson(Map<String, dynamic> json) => PetModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      birthDate: json['birth_date'] ?? '',
      breed: json['breed'] ?? '',
      sex: json['sex'] ?? '',
      fur: json['fur'] ?? '',
      photos: List<String>.from(
          (json['photos'] as List).map((photo) => photo).toList()),
      tutor: TutorModel.fromJson(json['user']));

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'birth_date': birthDate,
        'breed': breed,
        'fur': fur,
        'sex': sex,
        'photos': photos.toString(),
        'tutor_id': tutor?.id
      };

  @override
  List<Object?> get props =>
      [id, name, sex, birthDate, breed, fur, photos, tutor];

  @override
  bool? get stringify => true;
}

extension PetEntityToModel on PetEntity {
  PetModel get toModel => PetModel(
      id: id ?? '',
      name: name ?? '',
      birthDate: birthDate ?? '',
      breed: breed ?? '',
      fur: fur ?? '',
      sex: sex ?? '',
      photos: photos ?? [],
      tutor: tutor ?? const TutorEntity());
}

extension PetModelToEntity on PetModel {
  PetEntity get toEntity => PetEntity(
      id: id,
      name: name,
      birthDate: birthDate,
      breed: breed,
      fur: fur,
      sex: sex,
      photos: photos,
      tutor: tutor);
}
