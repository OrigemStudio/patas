import 'package:equatable/equatable.dart';

class UpdateLostEntity extends Equatable {
  final String? petId;
  final bool? isLost;

  const UpdateLostEntity({this.petId, this.isLost});

  @override
  List<Object?> get props => [petId, isLost];

  @override
  bool? get stringify => true;
}
