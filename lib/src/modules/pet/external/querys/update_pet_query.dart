class UpdatePetQuery {
  static const String value = r'''
    query GetPetQuery($pet_id: uuid!) {
      pets(where: {id: {_eq: $pet_id}}) {
        id
        name
        birth_date
        breed
        user {
          name
          id
          city
          email
          neighborhood
          number
          phone
          street
          uf
        }
        sex
        fur
        photos
      }
    }
  ''';
}
