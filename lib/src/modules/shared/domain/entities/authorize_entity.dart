import 'package:equatable/equatable.dart';

class AuthorizeEntity extends Equatable {
  final String? email;
  final String? token;
  final String? refreshToken;

  const AuthorizeEntity({this.email, this.token, this.refreshToken});

  @override
  List<Object?> get props => [email, token, refreshToken];

  @override
  bool? get stringify => true;
}
