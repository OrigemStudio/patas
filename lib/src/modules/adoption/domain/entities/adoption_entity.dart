import 'package:equatable/equatable.dart';

import '../../../../../patas_exports.dart';

class AdoptionEntity extends Equatable {
  final List<PetEntity>? myPets;
  final List<PetEntity>? pets;

  const AdoptionEntity({
    this.myPets,
    this.pets,
  });

  @override
  List<Object?> get props => [pets];

  @override
  bool? get stringify => true;
}
