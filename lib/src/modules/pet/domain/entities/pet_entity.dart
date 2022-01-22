import 'package:equatable/equatable.dart';
import 'package:patas/patas_exports.dart';

class PetEntity extends Equatable {
  final String? id;
  final String? name;
  final String? sex;
  final String? birthDate;
  final String? breed;
  final String? fur;
  final List<String>? photos;
  final TutorEntity? tutor;

  const PetEntity(
      {this.id,
      this.name,
      this.sex,
      this.birthDate,
      this.breed,
      this.fur,
      this.photos,
      this.tutor});

  @override
  List<Object?> get props =>
      [id, name, sex, birthDate, breed, fur, photos, tutor];

  @override
  bool? get stringify => true;
}
