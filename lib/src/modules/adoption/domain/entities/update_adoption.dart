import 'package:equatable/equatable.dart';

class UpdateAdoptionEntity extends Equatable {
  final String? tutorId;
  final String? petId;
  final bool? toAdopt;

  const UpdateAdoptionEntity({this.tutorId, this.petId, this.toAdopt});

  @override
  List<Object?> get props => [tutorId, petId, toAdopt];

  @override
  bool? get stringify => true;
}
