import '../../../../../../patas_exports.dart';

class UpdateLostModel extends UpdateLostEntity {
  const UpdateLostModel({
    required String petId,
    required bool isLost,
  }) : super(petId: petId, isLost: isLost);

  Map<String, dynamic> toMap() {
    return {
      "pet_id": petId,
      "is_lost": isLost,
    };
  }

  @override
  List<Object?> get props => [petId, isLost];

  @override
  bool? get stringify => true;
}

extension UpdateLostEntityToModel on UpdateLostEntity {
  UpdateLostModel get toModel =>
      UpdateLostModel(petId: petId ?? '', isLost: isLost ?? false);
}

extension UpdateLostModelToEntity on UpdateLostModel {
  UpdateLostEntity get toEntity =>
      UpdateLostEntity(petId: petId, isLost: isLost);
}
