import 'package:equatable/equatable.dart';

class AuthorizedEntity extends Equatable {
  final String? email;
  final String? token;
  final String? uid;

  const AuthorizedEntity({this.email, this.token, this.uid});

  @override
  List<Object?> get props => [email, token, uid];

  @override
  bool? get stringify => true;
}
