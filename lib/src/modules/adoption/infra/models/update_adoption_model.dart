import '../../../../../patas_exports.dart';

class UpdateAdoptionModel extends UpdateAdoptionEntity {
  const UpdateAdoptionModel({
    required String petId,
    required bool toAdopt,
  }) : super(petId: petId, toAdopt: toAdopt);

  Map<String, dynamic> toMap() {
    return {
      "pet_id": petId,
      "to_adopt": toAdopt,
    };
  }

  @override
  List<Object?> get props => [petId, toAdopt];

  @override
  bool? get stringify => true;
}

extension UpdateAdoptionEntityToModel on UpdateAdoptionEntity {
  UpdateAdoptionModel get toModel =>
      UpdateAdoptionModel(petId: petId ?? '', toAdopt: toAdopt ?? false);
}

extension UpdateAdoptionModelToEntity on UpdateAdoptionModel {
  UpdateAdoptionEntity get toEntity =>
      UpdateAdoptionEntity(toAdopt: toAdopt, petId: petId);
}
