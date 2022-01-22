import '../../../../../patas_exports.dart';

class MyPetsModel extends MyPetsEntity {
  const MyPetsModel({required TutorEntity tutor, required List<PetEntity> pets})
      : super(tutor: tutor, pets: pets);

  static Map<String, dynamic> toMap(MyPetsEntity entity) {
    return {"tutor": entity.tutor, "pets": entity.pets};
  }

  factory MyPetsModel.fromJson(Map<String, dynamic> json) => MyPetsModel(
        tutor: TutorModel.fromJson(json),
        pets: List<PetEntity>.from((json['pets'] as List)
            .map((pet) => PetModel.fromJson(pet))
            .toList()),
      );

  @override
  List<Object?> get props => [tutor, pets];

  @override
  bool? get stringify => true;
}

extension MyPetsEntityToModel on MyPetsEntity {
  MyPetsModel get toModel =>
      MyPetsModel(tutor: tutor ?? const TutorEntity(), pets: pets ?? const []);
}

extension MyPetsModelToEntity on MyPetsModel {
  MyPetsEntity get toEntity => MyPetsEntity(tutor: tutor, pets: pets);
}
