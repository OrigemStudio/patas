import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? email;
  final String? token;
  final String? refreshToken;

  const UserEntity({this.email, this.token, this.refreshToken});

  @override
  List<Object?> get props => [email, token, refreshToken];

  @override
  bool? get stringify => true;
}
