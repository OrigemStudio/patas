import 'package:equatable/equatable.dart';

class AddressEntity extends Equatable {
  final String? cep;
  final String? street;
  final String? number;
  final String? neighborhood;
  final String? city;
  final String? uf;

  const AddressEntity({
    this.cep,
    this.street,
    this.number,
    this.neighborhood,
    this.city,
    this.uf,
  });
  @override
  List<Object?> get props => [cep, street, number, neighborhood, city, uf];

  @override
  bool? get stringify => true;
}
