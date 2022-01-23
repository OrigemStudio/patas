import 'package:equatable/equatable.dart';

class UpdateAdoptionEntity extends Equatable {
  final String? petId;
  final bool? toAdopt;

  const UpdateAdoptionEntity({this.petId, this.toAdopt});

  @override
  List<Object?> get props => [petId, toAdopt];

  @override
  bool? get stringify => true;
}
