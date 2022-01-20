import '../../../../../patas_exports.dart';

class PetModel extends PetEntity {
  const PetModel(
      {required String id,
      required String name,
      required String age,
      required String breed,
      required TutorEntity tutor})
      : super(id: id, name: name, age: age, breed: breed, tutor: tutor);

  factory PetModel.fromJson(Map<String, dynamic> json) => PetModel(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      breed: json['breed'],
      tutor: TutorModel.fromJson(json['tutor']));

  @override
  List<Object?> get props => [id, name, age, breed, tutor];

  @override
  bool? get stringify => true;
}

extension PetEntityToModel on PetEntity {
  PetModel get toModel => PetModel(
      id: id ?? '',
      name: name ?? '',
      age: age ?? '',
      breed: breed ?? '',
      tutor: tutor ?? const TutorEntity());
}

extension PetModelToEntity on PetModel {
  PetEntity get toEntity =>
      PetEntity(id: id, name: name, age: age, breed: breed, tutor: tutor);
}
