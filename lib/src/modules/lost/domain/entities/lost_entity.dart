import 'package:equatable/equatable.dart';

import '../../../../../patas_exports.dart';

class LostEntity extends Equatable {
  final List<PetEntity>? myPets;
  final List<PetEntity>? pets;

  const LostEntity({
    this.myPets,
    this.pets,
  });

  @override
  List<Object?> get props => [pets];

  @override
  bool? get stringify => true;
}
