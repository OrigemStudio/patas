import 'package:equatable/equatable.dart';

import '../../../../../patas_exports.dart';

class PetEntity extends Equatable {
  final String? id;
  final String? name;
  final String? age;
  final String? breed;
  final TutorEntity? tutor;

  const PetEntity({this.id, this.name, this.age, this.breed, this.tutor});

  @override
  List<Object?> get props => [id, name, age, breed, tutor];

  @override
  bool? get stringify => true;
}
