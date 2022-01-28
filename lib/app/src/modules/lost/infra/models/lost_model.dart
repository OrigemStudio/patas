import '../../../../../../patas_exports.dart';

class LostModel extends LostEntity {
  const LostModel(
      {required List<PetEntity> myPets, required List<PetEntity> pets})
      : super(myPets: myPets, pets: pets);

  static Map<String, dynamic> toMap(LostEntity entity) {
    return {"myPets": entity.myPets, "pets": entity.pets};
  }

  factory LostModel.fromJson(Map<String, dynamic> json) => LostModel(
        myPets: List<PetEntity>.from((json['pets'] as List)
            .map((pet) => PetModel.fromJson(pet))
            .toList()),
        pets: List<PetEntity>.from((json['pets'] as List)
            .map((pet) => PetModel.fromJson(pet))
            .toList()),
      );

  @override
  List<Object?> get props => [myPets, pets];

  @override
  bool? get stringify => true;
}

extension LostEntityToModel on LostEntity {
  LostModel get toModel =>
      LostModel(myPets: myPets ?? const [], pets: pets ?? const []);
}

extension LostModelToEntity on LostModel {
  LostEntity get toEntity => LostEntity(myPets: myPets, pets: pets);
}
