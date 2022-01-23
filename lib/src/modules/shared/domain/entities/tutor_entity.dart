import 'package:equatable/equatable.dart';
import 'package:patas/patas_exports.dart';

class TutorEntity extends Equatable {
  final String? id;
  final String? name;
  final String? email;
  final List<String>? phones;
  final AddressEntity? address;

  const TutorEntity(
      {this.id, this.name, this.email, this.phones, this.address});

  @override
  List<Object?> get props => [id, email, email, phones, address];

  @override
  bool? get stringify => true;
}
