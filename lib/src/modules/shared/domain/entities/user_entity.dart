import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? id;
  final String? name;
  final String? email;
  final String? phone;

  const UserEntity({this.id, this.name, this.email, this.phone});

  @override
  List<Object?> get props => [id, email, email, phone];

  @override
  bool? get stringify => true;
}
