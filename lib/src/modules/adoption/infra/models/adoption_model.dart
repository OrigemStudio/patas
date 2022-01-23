import '../../../../../patas_exports.dart';

class AdoptionModel extends AdoptionEntity {
  const AdoptionModel(
      {required List<PetEntity> myPets, required List<PetEntity> pets})
      : super(myPets: myPets, pets: pets);

  static Map<String, dynamic> toMap(AdoptionEntity entity) {
    return {"myPets": entity.myPets, "pets": entity.pets};
  }

  factory AdoptionModel.fromJson(Map<String, dynamic> json) => AdoptionModel(
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

extension AdoptionEntityToModel on AdoptionEntity {
  AdoptionModel get toModel =>
      AdoptionModel(myPets: myPets ?? const [], pets: pets ?? const []);
}

extension AdoptionModelToEntity on AdoptionModel {
  AdoptionEntity get toEntity => AdoptionEntity(myPets: myPets, pets: pets);
}
