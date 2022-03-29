import 'package:equatable/equatable.dart';
import 'package:patas/patas_exports.dart';

class RegisterEntity extends Equatable {
  final String? name;
  final String? email;
  final String? password;
  final List<String>? phones;
  final AddressEntity? address;

  const RegisterEntity(
      {this.name, this.email, this.phones, this.address, this.password});

  @override
  List<Object?> get props => [password, email, email, phones, address];

  @override
  bool? get stringify => true;
}
