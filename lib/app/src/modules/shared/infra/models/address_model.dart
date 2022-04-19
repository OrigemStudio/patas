import 'package:patas/patas_exports.dart';

class AddressModel extends AddressEntity {
  const AddressModel(
      {required String cep,
      required String street,
      required String number,
      required String neighborhood,
      required String city,
      required String uf})
      : super(
            cep: cep,
            street: street,
            neighborhood: neighborhood,
            city: city,
            uf: uf);

  factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
        cep: json['cep'],
        street: json['street'],
        number: json['number'],
        neighborhood: json['neighborhood'],
        city: json['city'],
        uf: json['uf'],
      );

  static Map<String, dynamic> toJson(AddressEntity entity) => {
        'cep': entity.cep,
        'street': entity.street,
        'number': entity.number,
        'neighborhood': entity.neighborhood,
        'city': entity.city,
        'uf': entity.uf
      };

  @override
  List<Object?> get props => [cep, street, number, neighborhood, city, uf];

  @override
  bool? get stringify => true;
}

extension AddressEntityToModel on AddressEntity {
  AddressModel get toModel => AddressModel(
      cep: cep ?? '',
      street: street ?? '',
      number: number ?? '',
      neighborhood: neighborhood ?? '',
      city: city ?? '',
      uf: uf ?? '');
}

extension AddressModelToEntity on AddressModel {
  AddressEntity get toEntity => AddressEntity(
      cep: cep,
      street: street,
      number: number,
      neighborhood: neighborhood,
      city: city,
      uf: uf);
}
