import 'package:equatable/equatable.dart';

import '../../../../../patas_exports.dart';

class MyPetsEntity extends Equatable {
  final TutorEntity? tutor;
  final List<PetEntity>? pets;

  const MyPetsEntity({
    this.tutor,
    this.pets,
  });

  @override
  List<Object?> get props => [tutor, pets];

  @override
  bool? get stringify => true;
}
