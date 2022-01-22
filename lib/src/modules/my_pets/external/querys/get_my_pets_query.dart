class GetMyPetsQuery {
  static const String value = r'''
      query GetMyPets($tutor_id:uuid!) {
        user(where: {id: {_eq: $tutor_id}}) {
          id
          name
          email
          phone
          pets {
            id
            sex
            breed
            photos
            name
          }
        }
      }
    ''';
}
