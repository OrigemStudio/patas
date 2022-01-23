import '../../../../../patas_exports.dart';

class UpdateAdoptionModel extends UpdateAdoptionEntity {
  const UpdateAdoptionModel({
    required String tutorId,
    required String petId,
    required bool toAdopt,
  }) : super(tutorId: tutorId, petId: petId, toAdopt: toAdopt);

  Map<String, dynamic> toMap() {
    return {
      "tutor_id": tutorId,
      "pet_id": petId,
      "to_adopt": toAdopt,
    };
  }

  @override
  List<Object?> get props => [tutorId, petId];

  @override
  bool? get stringify => true;
}

extension UpdateAdoptionEntityToModel on UpdateAdoptionEntity {
  UpdateAdoptionModel get toModel => UpdateAdoptionModel(
      tutorId: tutorId ?? '', petId: petId ?? '', toAdopt: toAdopt ?? false);
}

extension UpdateAdoptionModelToEntity on UpdateAdoptionModel {
  UpdateAdoptionEntity get toEntity =>
      UpdateAdoptionEntity(tutorId: tutorId, petId: petId);
}
